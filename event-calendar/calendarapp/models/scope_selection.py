import math
import datetime as dt
import os
import tempfile
import time
import random
import pyomo.environ as pyo
from pyomo.opt import SolverFactory, SolverStatus, TerminationCondition
from calendarapp.models.nurse_day import NurseDay
from calendarapp.models.nurse import Nurse
from calendarapp.models.nurse_day_shift_type import NurseDayShiftType
from calendarapp.models.nurse_day import NurseDay
from calendarapp.models.nurse_shift_type import NurseShiftType
from calendarapp.models.day_shift_type import DayShiftType


class ScopeSelection:
    def __init__(self, name, maxnurse, maxday, maxshifttype,
                 optimizer,global_object ):
        self.Name = name
        self.NrSelected = 0
        self.MaxNurses = maxnurse
        self.MaxDays = maxday
        self.MaxShiftTypes = maxshifttype
        self.Score = 0.0
        self.CanBeChosen = True
        # Relations
        self.Optimizer = optimizer
        optimizer.set_relation_scope_selection(self)
        self.OptimizerIteration = []
        self.global_object = global_object

    def set_relation_optimizer_iteration(self, optimizeriteration):
        self.OptimizerIteration.append(optimizeriteration)

    def get_opt_scope(self):
        anchor = self.get_opt_scope_anchor()
        optscope_days, optscope_nurses, optscope_shifttypes = self.get_opt_neighborhood(anchor)
        return optscope_days, optscope_nurses, optscope_shifttypes

    def get_opt_scope_anchor(self):
        # print("global_object optimizer ",self.Optimizer.GlobalObject.id)
        # nurses = [n for n in Nurse.objects.filter(GlobalObject_id=self.Optimizer.GlobalObject.id)]
        # days = [d for d in Day.objects.filter(GlobalObject_id=self.Optimizer.GlobalObject.id)]
        nurses = [n for n in self.Optimizer.GlobalObject.Nurse]
        days = [d for d in self.Optimizer.GlobalObject.Day]
        nr_nurses = len(nurses)
        print("len nurses", nr_nurses)
        nr_days = len(days)
        randomnr = random.randrange(nr_nurses * nr_days)
        nurse = nurses[math.floor(randomnr / nr_days)]
        day = days[randomnr % nr_days]
        nurseday = [nd for nd in nurse.NurseDay if nd.Day == day][0]
        print('nurseday', nurseday.Nurse.EmployeeID, nurseday.Day.DayID)
        return nurseday

    def get_optscope_days(self, anchor_day):
        if anchor_day == []:
            anchor_day = random.choice([n for n in self.Optimizer.GlobalObject.Day])
        opt_scope_days = [anchor_day]
        if self.MaxDays > 1:
            days = [d for d in self.Optimizer.GlobalObject.Day]
            days_to_left = self.MaxDays // 2
            days_to_right = self.MaxDays - days_to_left
            opt_scope_days = [d for d in self.Optimizer.GlobalObject.Day if
                              int(d.DayID) >= int(anchor_day.DayID) - days_to_left and int(d.DayID) <= int(anchor_day.DayID) + days_to_right - 1]
            if len(opt_scope_days) < self.MaxDays and len(opt_scope_days) < len(days):
                diff = self.MaxDays - len(opt_scope_days)
                min_day = min([int(d.DayID) for d in opt_scope_days])
                max_day = max([int(d.DayID) for d in opt_scope_days])
                if min_day > 0:
                    # Take days to the left
                    opt_scope_days.extend(
                        [d for d in self.Optimizer.GlobalObject.Day if int(d.DayID) >= min_day - diff and int(d.DayID) < min_day])
                else:
                    # Take days to the right
                    opt_scope_days.extend(
                        [d for d in self.Optimizer.GlobalObject.Day if int(d.DayID) > max_day and int(d.DayID) <= max_day + diff])
        opt_scope_days.sort(key=lambda x: int(x.DayID), reverse=False)
        return opt_scope_days

    def get_optscope_nurses(self, opt_scope_days, anchor_nurse):
        if anchor_nurse == []:
            anchor_nurse = random.choice([n for n in self.Optimizer.GlobalObject.Nurse])
        opt_scope_nurses = [anchor_nurse]
        if self.MaxNurses > 1:
            nurses_without_anchor = sorted([n for n in self.Optimizer.GlobalObject.Nurse if n != anchor_nurse],
                                           key=lambda x: (
                                           x.get_nurseday_nrselectedinoptscope(opt_scope_days), random.random()))
            print('get_optscope_nurses')
            for n in nurses_without_anchor:
                print(' ', n.EmployeeID, n.get_nurseday_nrselectedinoptscope(opt_scope_days))
            top_random_nurses = self.Optimizer.select_top_random(nurses_without_anchor,
                                                                 self.Optimizer.TopRandomProbability,
                                                                 min(self.MaxNurses - 1, len(nurses_without_anchor)))
            opt_scope_nurses.extend(top_random_nurses)
        opt_scope_nurses.sort(key=lambda x: x.EmployeeID, reverse=False)
        return opt_scope_nurses

    def get_optscope_shifttypes(self, opt_scope_days, opt_scope_nurses, anchor_shifttype):
        opt_scope_shifttypes = []
        opt_scope_shifttypes_planned = []
        for n in opt_scope_nurses:
            for ns in n.NurseShiftType:
                if ns.MaxShifts > 0:
                    opt_scope_shifttypes.append(ns.ShiftType)
            for nd in n.NurseDay:
                if nd.Day in opt_scope_days and nd.AssignedShift != []:
                    opt_scope_shifttypes_planned.append(nd.AssignedShift)
        opt_scope_shifttypes = list(set(opt_scope_shifttypes))
        opt_scope_shifttypes_planned = list(set(opt_scope_shifttypes_planned))
        print('opt_scope_shifttypes', len(opt_scope_shifttypes), 'opt_scope_shifttypes_planned',
              len(opt_scope_shifttypes_planned))
        # opt_scope_shifttypes = random.sample(opt_scope_shifttypes, min(self.MaxShiftTypes, len(opt_scope_shifttypes)))
        opt_scope_shifttypes = sorted(opt_scope_shifttypes, key=lambda x: (x not in opt_scope_shifttypes_planned,
                                                                           x.get_nursedayshifttype_nrselectedinoptscope(
                                                                               opt_scope_nurses, opt_scope_days),
                                                                           random.random()))
        print('get_optscope_shifttypes')
        for s in opt_scope_shifttypes:
            print(' ', s.ShiftID, s not in opt_scope_shifttypes_planned,
                  s.get_nursedayshifttype_nrselectedinoptscope(opt_scope_nurses, opt_scope_days))
        opt_scope_shifttypes = self.Optimizer.select_top_random(opt_scope_shifttypes,
                                                                self.Optimizer.TopRandomProbability,
                                                                min(self.MaxShiftTypes, len(opt_scope_shifttypes)))
        if anchor_shifttype != [] and not anchor_shifttype in opt_scope_shifttypes:
            random_idx = random.randrange(len(opt_scope_shifttypes))
            opt_scope_shifttypes[random_idx] = anchor_shifttype
        return opt_scope_shifttypes

    def get_opt_neighborhood(self, anchor):
        if isinstance(anchor, NurseDay):
            day = anchor.Day
            nurse = anchor.Nurse
            shifttype = []
        elif isinstance(anchor, DayShiftType):
            day = anchor.Day
            nurse = []
            shifttype = anchor.ShiftType
        elif isinstance(anchor, NurseDayShiftType):
            day = anchor.Day
            nurse = anchor.Nurse
            shifttype = anchor.ShiftType
        opt_scope_days = self.get_optscope_days(day)
        opt_scope_nurses = self.get_optscope_nurses(opt_scope_days, nurse)
        opt_scope_shifttypes = self.get_optscope_shifttypes(opt_scope_days, opt_scope_nurses, shifttype)
        return opt_scope_days, opt_scope_nurses, opt_scope_shifttypes

    def calc_score(self):
        self.Score = 0.0

    def calc_can_be_chosen(self):
        self.CanBeChosen = True
