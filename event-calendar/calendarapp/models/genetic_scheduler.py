import math
import datetime as dt
import time
import random

import pandas as pd
import pyomo.environ as pyo
from pyomo.opt import SolverFactory, SolverStatus, TerminationCondition
from calendarapp.models.nurse_day import NurseDay
from calendarapp.models.nurse import Nurse
from calendarapp.models.day_shift_type import DayShiftType
from calendarapp.models.nurse_day_shift_type import NurseDayShiftType
from calendarapp.models.global_object import GlobalObject
from calendarapp.models.shift_type import ShiftType
from calendarapp.models.day  import Day
from calendarapp.models.cereri.dayoff_option import DayOffOption
from calendarapp.models.cereri.dayoff_request import DayOffRequest
from calendarapp.models.cereri.shift_option import ShiftOption
from calendarapp.models.cereri.shift_request import ShiftRequest
from calendarapp.models.nurse_shift_type import NurseShiftType
from calendarapp.models.scope_selection import ScopeSelection
from calendarapp.models.scope_selection_random import ScopeSelectionRandom
from calendarapp.models.scope_selection_min_total_minutes import ScopeSelectionMinTotalMinutes
from calendarapp.models.scope_selection_shift_on_request import ScopeSelectionShiftOnRequest
from calendarapp.models.scope_selection_shift_off_request import ScopeSelectionShiftOffRequest
from calendarapp.models.scope_selection_shift_over_cover import ScopeSelectionShiftOverCover
from calendarapp.models.scope_selection_shift_under_cover import ScopeSelectionShiftUnderCover
from calendarapp.models.optimizer import Optimizer
from calendarapp.models.optimizer_iteration import OptimizerIteration
from calendarapp.models.opt_scope_nurse import OptScopeNurse
from calendarapp.models.opt_scope_day import OptScopeDay
from calendarapp.models.opt_scope_shift_type import OptScopeShiftType
from calendarapp.models.opt_scope_nurse_shift_type import OptScopeNurseShiftType
from calendarapp.models.opt_scope_nurseday import OptScopeNurseDay
from calendarapp.models.opt_scope_day_shift_type import OptScopeDayShiftType
from calendarapp.models.opt_scope_nurse_day_shift_type import OptScopeNurseDayShiftType
class GeneticScheduler:
    def __init__(self, global_object, optimizer, scope_selections,
                 population_size=50, generations=50,
                 elite_size=5, crossover_rate=0.8, mutation_rate=0.1,
                 hard_penalty=1e6, stagnation_limit=10):
        self.go = global_object
        self.optimizer = optimizer
        self.scope_selections = scope_selections
        self.pop_size = population_size
        self.generations = generations
        self.elite_size = elite_size
        self.crossover_rate = crossover_rate
        self.mutation_rate = mutation_rate
        self.hard_penalty = hard_penalty
        self.stag_limit = stagnation_limit
        self.gene_map = [(n, d)
                         for n in sorted(self.go.Nurse, key=lambda x: x.EmployeeID)
                         for d in sorted(self.go.Day, key=lambda x: x.DayID)]
        self.shift_list = list(self.go.ShiftType)
        self.allowed = []
        for nurse, _day in self.gene_map:
            allowed = [0]  # Off
            for st in self.shift_list:
                if nurse.can_plan_shifttype(st):
                    allowed.append(self.shift_list.index(st) + 1)
            self.allowed.append(allowed)

    def initialize_population(self):
        return [
            [random.choice(self.allowed[i]) for i in range(len(self.gene_map))]
            for _ in range(self.pop_size)
        ]

    def decode(self, chromosome):
        self.go.unassign_shifts()
        for idx, gene in enumerate(chromosome):
            if gene == 0:
                continue
            nurse, day = self.gene_map[idx]
            st = self.shift_list[gene - 1]
            nd = next(nd for nd in nurse.NurseDay if nd.Day == day)
            nd.assign_shift(st)

    def encode(self):
        chrom = []
        for nurse, day in self.gene_map:
            nd = next(nd for nd in nurse.NurseDay if nd.Day == day)
            chrom.append(
                self.shift_list.index(nd.AssignedShift) + 1
                if nd.AssignedShift else 0
            )
        return chrom

    def fitness(self, chromosome):
        # decode + memetic local improve
        self.decode(chromosome)
        # imp = self.local_improve(chromosome)
        # self.decode(imp)

        # calculează hard & soft KPI
        hard = self.go.calc_TotalKPIHard(False)
        soft = self.go.calc_TotalKPISoft(False)

        # returnează tuple: (nr. de încălcări hard, cost soft)
        return hard, soft

    def local_improve(self, chromosome, rounds=1):
        for _ in range(rounds):
            ss = self.optimizer.select_scope_selection()
            days, nurses, shifts = ss.get_opt_scope()
            self.go.reset_isinsideoptscope()
            self.go.set_isinsideoptscope(nurses, days, shifts)
            oi = OptimizerIteration(
                self.optimizer.CurrentIteration, time.time(),
                self.optimizer, ss
            )
            oi.create_optscope_objects(nurses, days, shifts)
            model = oi.initialize_mip()
            inst, res = oi.solve_mip(model, False, f"ga_memetic_{oi.IterationNr}")
            oi.handle_result(model, inst, res, False, f"ga_memetic_{oi.IterationNr}", allow_rollback=True)
            self.optimizer.CurrentIteration += 1
        return self.encode()

    def tournament_selection(self, population, fitnesses, k=3):
        candidates = random.sample(range(len(population)), k)
        return population[min(candidates, key=lambda i: fitnesses[i])]

    def crossover(self, p1, p2):
        if random.random() > self.crossover_rate:
            return p1[:], p2[:]
        pt = random.randrange(1, len(p1))
        return p1[:pt] + p2[pt:], p2[:pt] + p1[pt:]

    def mutate(self, chrom):
        for i in range(len(chrom)):
            if random.random() < self.mutation_rate:
                chrom[i] = random.choice(self.allowed[i])
        return chrom

    def _fallback_to_mip(self, best_chrom):
        # print(f"[GA] {self.stag_limit} gens without improvement → fallback to full MIP solver")
        # decode best GA solution
        self.decode(best_chrom)
        days = self.go.Day
        nurses = self.go.Nurse
        shifts = self.go.ShiftType
        self.go.reset_isinsideoptscope()
        self.go.set_isinsideoptscope(nurses, days, shifts)
        ss = ScopeSelectionRandom('FullScope', len(nurses), len(days), len(shifts), self.optimizer,self.go)
        oi = OptimizerIteration(1, time.time(), self.optimizer, ss,self.go)
        oi.create_optscope_objects(nurses, days, shifts)
        model = oi.initialize_mip()
        inst, res = oi.solve_mip(model, False, "fallback")
        oi.handle_result(model, inst, res, False, "fallback", allow_rollback=False)

    def run(self):
        pop = self.initialize_population()
        best_hard, best_soft = float('inf'), float('inf')
        no_improve = 0

        for gen in range(1, self.generations + 1):
            fits = [self.fitness(ind) for ind in pop]
            idx = min(range(len(pop)), key=lambda i: fits[i])
            hard, soft = fits[idx]
            if hard < best_hard or (hard == best_hard and soft < best_soft):
                best_hard, best_soft = hard, soft
                best = pop[idx][:]
                no_improve = 0
            else:
                no_improve += 1

            print(f"Gen {gen}: best hard={best_hard}, soft={best_soft}, stagnari={no_improve}")

            if no_improve >= self.stag_limit and best_hard > 0:
                print("[GA] fallback la MIP din cauza stagnarii pe hard")
                self._fallback_to_mip(best)
                self.decode(best)  # sol nou după MIP
                best = self.encode()
                hard, soft = self.fitness(best)
                best_hard, best_soft = hard, soft
                break
            #    doar tournament, crossover, mutation
            elite_idx = sorted(range(len(pop)), key=lambda i: fits[i])[:self.elite_size]
            new_pop = [pop[i] for i in elite_idx]
            while len(new_pop) < self.pop_size:
                p1 = self.tournament_selection(pop, fits)
                p2 = self.tournament_selection(pop, fits)
                c1, c2 = self.crossover(p1, p2)
                new_pop += [self.mutate(c1)]
                if len(new_pop) < self.pop_size:
                    new_pop += [self.mutate(c2)]
            pop = new_pop
        if best_hard > 0:
            print("[GA] fallback final la MIP")
            self._fallback_to_mip(best)
            best = self.encode()

        # decode & raport
        self.decode(best)
        self.go.calc_TotalKPIHard(True)
        self.go.calc_TotalKPISoft(True)
        return self.go

    def print_schedule(self):
        ''''''