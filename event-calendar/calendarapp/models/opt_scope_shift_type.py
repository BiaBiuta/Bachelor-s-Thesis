import datetime as dt
import os
import tempfile
import time
import random
import pyomo.environ as pyo
from pyomo.opt import SolverFactory, SolverStatus, TerminationCondition


# %%
class OptScopeShiftType:
    def __init__(self,
                 optimizeriteration, shifttype):
        # Relations
        self.OptScopeNurseShiftType = []
        self.OptScopeNurseDayShiftType = []
        self.OptScopeDayShiftType = []
        self.OptimizerIteration = optimizeriteration
        optimizeriteration.set_relation_optscope_shifttype(self)
        self.ShiftType = shifttype
        shifttype.set_relation_optscope_shifttype(self)

    def __str__(self):
        return 'ShiftType' + self.ShiftType.ShiftID

    def set_relation_optscope_nurseshifttype(self, optscope_nurseshifttype):
        self.OptScopeNurseShiftType.append(optscope_nurseshifttype)

    def set_relation_optscope_dayshifttype(self, optscope_dayshifttype):
        self.OptScopeDayShiftType.append(optscope_dayshifttype)

    def set_relation_optscope_nursedayshifttype(self, optscope_nursedayshifttype):
        self.OptScopeNurseDayShiftType.append(optscope_nursedayshifttype)
