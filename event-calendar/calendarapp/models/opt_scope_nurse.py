import datetime as dt
import os
import tempfile
import time
import random
import pyomo.environ as pyo
from pyomo.opt import SolverFactory, SolverStatus, TerminationCondition


# %%
class OptScopeNurse:
    def __init__(self,
                 optimizeriteration, nurse):
        # Relations
        self.OptScopeNurseShiftType = []
        self.OptScopeNurseDay = []
        self.OptScopeNurseDayShiftType = []
        self.OptimizerIteration = optimizeriteration
        optimizeriteration.set_relation_optscope_nurse(self)
        self.Nurse = nurse
        nurse.set_relation_optscope_nurse(self)

    def __str__(self):
        return 'Nurse' + self.Nurse.EmployeeID

    def set_relation_optscope_nurseshifttype(self, optscope_nurseshifttype):
        self.OptScopeNurseShiftType.append(optscope_nurseshifttype)

    def set_relation_optscope_nurseday(self, optscope_nurseday):
        self.OptScopeNurseDay.append(optscope_nurseday)

    def set_relation_optscope_nursedayshifttype(self, optscope_nursedayshift):
        self.OptScopeNurseDayShiftType.append(optscope_nursedayshift)