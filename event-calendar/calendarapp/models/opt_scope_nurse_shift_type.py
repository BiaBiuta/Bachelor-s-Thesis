import math
import datetime as dt
import os
import tempfile
import time
import random
import pyomo.environ as pyo
from pyomo.opt import SolverFactory, SolverStatus, TerminationCondition



# %%
class OptScopeNurseShiftType:
    def __init__(self,
                 optscopenurse, optscopeshifttype, nurseshifttype):
        # Relations
        self.OptScopeNurse = optscopenurse
        optscopenurse.set_relation_optscope_nurseshifttype(self)
        self.OptScopeShiftType = optscopeshifttype
        optscopeshifttype.set_relation_optscope_nurseshifttype(self)
        self.NurseShiftType = nurseshifttype
        nurseshifttype.set_relation_optscope_nurseshifttype(self)
