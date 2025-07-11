import datetime as dt
import os
import tempfile
import time
import random
import pyomo.environ as pyo
from pyomo.opt import SolverFactory, SolverStatus, TerminationCondition




# %%
class OptScopeDay:
    def __init__(self,
                 optimizeriteration, day):
        # Relations
        self.OptScopeNurseDay = []
        self.OptScopeNurseDayShiftType = []
        self.OptScopeDayShiftType = []
        self.OptimizerIteration = optimizeriteration
        optimizeriteration.set_relation_optscope_day(self)
        self.Day = day
        day.set_relation_optscope_day(self)
        self.Next = []
        self.Previous = []

    def __str__(self):
        return 'Day' + str(self.Day.DayID)

    def set_relation_optscope_nurseday(self, optscope_nurseday):
        self.OptScopeNurseDay.append(optscope_nurseday)

    def set_relation_optscope_dayshifttype(self, optscope_dayshifttype):
        self.OptScopeDayShiftType.append(optscope_dayshifttype)

    def set_relation_optscope_nursedayshifttype(self, optscope_nursedayshifttype):
        self.OptScopeNurseDayShiftType.append(optscope_nursedayshifttype)

    def get_next(self):
        next = [optscope_d for optscope_d in self.OptimizerIteration.OptScopeDay if
                int(optscope_d.Day.DayID) == int(self.Day.DayID) + 1]
        if len(next) > 0:
            self.Next = next[0]

    def get_prev(self):
        prev = [optscope_d for optscope_d in self.OptimizerIteration.OptScopeDay if
                int(optscope_d.Day.DayID) == int(self.Day.DayID) - 1]
        if len(prev) > 0:
            self.Previous = prev[0]