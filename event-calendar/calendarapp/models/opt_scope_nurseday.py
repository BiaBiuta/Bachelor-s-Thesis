import datetime as dt
import os
import tempfile
import time
import random
import pyomo.environ as pyo
from pyomo.opt import SolverFactory, SolverStatus, TerminationCondition



# %%
class OptScopeNurseDay:
    def __init__(self,
                 optscopenurse, optscopeday, nurseday):
        self.AssignedShift = []
        # Relations
        self.OptScopeNurseDayShiftType = []
        self.OptScopeNurse = optscopenurse
        optscopenurse.set_relation_optscope_nurseday(self)
        self.OptScopeDay = optscopeday
        optscopeday.set_relation_optscope_nurseday(self)
        self.NurseDay = nurseday
        nurseday.set_relation_optscope_nurseday(self)

    def set_relation_optscope_nursedayshifttype(self, optscope_nursedayshifttype):
        self.OptScopeNurseDayShiftType.append(optscope_nursedayshifttype)