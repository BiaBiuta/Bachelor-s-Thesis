import datetime as dt
import os
import tempfile
import time
import random
import pyomo.environ as pyo
from pyomo.opt import SolverFactory, SolverStatus, TerminationCondition


# %%
class OptScopeDayShiftType:
    def __init__(self,
                 optscopeday, optscopeshifttype, dayshifttype):
        # Relations
        self.OptScopeDay = optscopeday
        optscopeday.set_relation_optscope_dayshifttype(self)
        self.OptScopeShiftType = optscopeshifttype
        optscopeshifttype.set_relation_optscope_dayshifttype(self)
        self.DayShiftType = dayshifttype
        dayshifttype.set_relation_optscope_dayshifttype(self)
