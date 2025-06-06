import datetime as dt
import os
import tempfile
import time
import random
import pyomo.environ as pyo
from pyomo.opt import SolverFactory, SolverStatus, TerminationCondition




# %%
class OptScopeNurseDayShiftType:
    def __init__(self,
                 optscopenurse, optscopeday, optscopeshifttype, optscopenurseday, nursedayshifttype):
        # Relations
        self.OptScopeNurse = optscopenurse
        optscopenurse.set_relation_optscope_nursedayshifttype(self)
        self.OptScopeDay = optscopeday
        optscopeday.set_relation_optscope_nursedayshifttype(self)
        self.OptScopeShiftType = optscopeshifttype
        optscopeshifttype.set_relation_optscope_nursedayshifttype(self)
        self.OptScopeNurseDay = optscopenurseday
        optscopenurseday.set_relation_optscope_nursedayshifttype(self)
        self.NurseDayShiftType = nursedayshifttype
        nursedayshifttype.set_relation_optscope_nursedayshifttype(self)
