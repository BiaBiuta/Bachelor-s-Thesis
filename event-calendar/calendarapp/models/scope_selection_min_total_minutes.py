import math
import datetime as dt
import os
import tempfile
import time
import random
import pyomo.environ as pyo
from pyomo.opt import SolverFactory, SolverStatus, TerminationCondition
from calendarapp.models.scope_selection  import ScopeSelection

class ScopeSelectionMinTotalMinutes(ScopeSelection):
    def get_opt_scope_anchor(self):
        print("globalObject Nurese ",self.Optimizer.GlobalObject.Nurse)
        violating_nursedays = [n.NurseDay for n in self.Optimizer.GlobalObject.Nurse if n.KPIHardMinTotalMinutes > 0]
        violating_nursedays = sum(violating_nursedays, [])  # flatten to 1 dimensional
        all_nds = [nd.NurseDayShiftType for nd in violating_nursedays]
        all_nds = sum(all_nds, [])  # flatten to 1 dimensional
        sorted_nds = sorted(all_nds,
                            key=lambda x: (x.NrSelectedInOptScope, -x.Nurse.KPIHardMinTotalMinutes, random.random()))
        print("all_nds",sorted_nds)
        nds = self.Optimizer.select_top_random(sorted_nds, self.Optimizer.TopRandomProbability, 1)[0]

        print('anchor ScopeSelectionMinTotalMinutes', nds.Nurse.EmployeeID, nds.Day.DayID, nds.ShiftType.ShiftID)
        return nds

    def calc_score(self):
        self.Score = 1000* self.global_object.KPIHardMinTotalMinutes

    def calc_can_be_chosen(self):
        self.CanBeChosen = self.global_object.KPIHardMinTotalMinutes > 0