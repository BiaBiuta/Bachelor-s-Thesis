import math
import datetime as dt
import os
import tempfile
import time
import random
import pyomo.environ as pyo
from pyomo.opt import SolverFactory, SolverStatus, TerminationCondition

class Optimizer:
    def __init__(self, timelimit, max_iteration, top_random_probability,
                 global_object):
        self.TimeLimit = timelimit
        self.MaxIteration = max_iteration
        self.StartDT = time.time()
        self.CurrentIteration = 1
        self.TopRandomProbability = top_random_probability
        # Relations
        self.GlobalObject = global_object
        self.GlobalObject.set_relation_optimizer(self)
        self.ScopeSelection = []
        self.OptimizerIteration = []

    def set_relation_optimizer_iteration(self, optimizeriteration):
        self.OptimizerIteration.append(optimizeriteration)

    def set_relation_scope_selection(self, scopeselection):
        self.ScopeSelection.append(scopeselection)

    def get_continue(self):
        elapsed_time = dt.timedelta(seconds=time.time() - self.StartDT)
        return self.CurrentIteration <= self.MaxIteration and elapsed_time < self.TimeLimit

    def get_scope_selection(self):
        # Random for now TODO
        return random.choice([ss for ss in self.ScopeSelection])

    def plan_up_to_iteration(self, number):
        self.GlobalObject.unassign_shifts()
        optimizer_iterations = [oi for oi in self.OptimizerIteration if oi.IterationNr <= number]
        optimizer_iterations.sort(key=lambda x: x.IterationNr, reverse=False)
        for optimizer_iteration in optimizer_iterations:
            optimizer_iteration.plan_optimizer_solution()

    def remove_optimizer_iterations(self):
        for optimizer_iteration in self.OptimizerIteration:
            for optscope_nurse in optimizer_iteration.OptScopeNurse:
                for optscope_nurseshifttype in optscope_nurse.OptScopeNurseShiftType:
                    del (optscope_nurseshifttype)
                for optscope_nursedayshifttype in optscope_nurse.OptScopeNurseDayShiftType:
                    del (optscope_nursedayshifttype)
                for optscope_nurseday in optscope_nurse.OptScopeNurseDay:
                    del (optscope_nurseday)
                del (optscope_nurse)
            for optscope_day in optimizer_iteration.OptScopeDay:
                del (optscope_day)
            for optscope_shifttype in optimizer_iteration.OptScopeShiftType:
                for optscope_dayshifttype in optscope_shifttype.OptScopeDayShiftType:
                    del (optscope_dayshifttype)
                del (optscope_shifttype)
            del (optimizer_iteration)

    def calc_scope_selection_attribute(self):
        self.GlobalObject.calc_TotalKPIHard(False)
        self.GlobalObject.calc_TotalKPISoft(False)
        for ss in self.ScopeSelection:
            ss.calc_score()
            ss.calc_can_be_chosen()
            print("score ",ss.Score)


    def select_top_random(self, list_pool, probability_threshold, target_nr):
        selected_element = []
        for e in list_pool:
            random_number = random.random()
            if random_number <= probability_threshold:
                selected_element.append(e)
                if len(selected_element) >= target_nr:
                    break
        if len(selected_element) < target_nr:
            unselected_list_pool = [e for e in list_pool if e not in selected_element]
            selected_element.extend(random.sample(unselected_list_pool, target_nr - len(selected_element)))

        return selected_element

    def select_scope_selection(self):
        # Select with top random approach
        self.calc_scope_selection_attribute()
        sorted_scope_selections = sorted([ss for ss in self.ScopeSelection if ss.CanBeChosen == True],
                                         key=lambda x: x.Score, reverse=True)
        for ss in sorted_scope_selections:
            print('candidate', ss.Name, ss.Score)

        selected_scope_selection = self.select_top_random(sorted_scope_selections, self.TopRandomProbability, 1)[0]
        print('selected_scope_selection', selected_scope_selection.Name)

        return selected_scope_selection