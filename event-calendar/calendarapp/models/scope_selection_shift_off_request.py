import math
import datetime as dt
import os
import tempfile
import time
import random
import pyomo.environ as pyo
from pyomo.opt import SolverFactory, SolverStatus, TerminationCondition
from calendarapp.models.scope_selection import ScopeSelection

# %%
class ScopeSelectionShiftOffRequest(ScopeSelection):
    def get_opt_scope_anchor(self):
        violating_nursedays = [n.NurseDay for n in self.Optimizer.GlobalObject.Nurse if n.KPISoftShiftOffRequest > 0]
        violating_nursedays = sum(violating_nursedays, [])  # flatten to 1 dimensional
        violating_nursedays = [nd for nd in violating_nursedays if nd.KPISoftShiftOffRequest > 0]
        sorted_violating_nursedays = sorted([nd for nd in violating_nursedays], key=lambda x: (
        x.NrSelectedInOptScope, -x.KPISoftShiftOffRequest, random.random()))
        nurseday = self.Optimizer.select_top_random(sorted_violating_nursedays, self.Optimizer.TopRandomProbability, 1)[
            0]
        nds = [ndshift for ndshift in nurseday.NurseDayShiftType if ndshift.IsOffRequest][0]
        print('anchor ScopeSelectionOffRequest', nds.Nurse.EmployeeID, nds.Day.DayID, nds.ShiftType.ShiftID)
        return nds

    def calc_score(self):
        self.Score = self.global_object.KPISoftShiftOffRequest

    def calc_can_be_chosen(self):
        self.CanBeChosen = self.global_object.KPISoftShiftOffRequest > 0