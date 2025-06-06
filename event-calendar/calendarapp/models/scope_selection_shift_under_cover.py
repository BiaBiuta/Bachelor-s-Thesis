import datetime as dt
import os
import tempfile
import time
import random
import pyomo.environ as pyo
from pyomo.opt import SolverFactory, SolverStatus, TerminationCondition
from calendarapp.models.scope_selection import ScopeSelection 
class ScopeSelectionShiftUnderCover(ScopeSelection):
    def get_opt_scope_anchor(self):
        violating_dayshifttypes = [d.DayShiftType for d in self.Optimizer.GlobalObject.Day if d.KPISoftUnderCover > 0]
        violating_dayshifttypes = sum(violating_dayshifttypes, [])  # flatten to 1 dimensional
        violating_dayshifttypes = [ds for ds in violating_dayshifttypes if ds.KPISoftUnderCover > 0]
        sorted_violating_dayshifttypes = sorted([ds for ds in violating_dayshifttypes], key=lambda x: (
        x.NrSelectedInOptScope, -x.KPISoftUnderCover, random.random()))
        dayshifttype = \
        self.Optimizer.select_top_random(sorted_violating_dayshifttypes, self.Optimizer.TopRandomProbability, 1)[0]
        day = dayshifttype.Day
        shifttype = dayshifttype.ShiftType
        # Select nurse: whose nurseday has no plan and can plan this shift
        qualified_nurse_days = sum(
            [n.NurseDay for n in self.Optimizer.GlobalObject.Nurse if n.can_plan_shifttype(shifttype)], [])
        qualified_nurse_days = [nd for nd in qualified_nurse_days if
                                nd.Day == day and (nd.AssignedShift == [] or nd.AssignedShift != shifttype)]
        if len(qualified_nurse_days) > 0:
            sorted_qualified_nurse_days = sorted([nd for nd in qualified_nurse_days],
                                                 key=lambda x: (x.NrSelectedInOptScope, random.random()))
            nurse_day = \
            self.Optimizer.select_top_random(sorted_qualified_nurse_days, self.Optimizer.TopRandomProbability, 1)[0]
            nds = [nds for nds in nurse_day.NurseDayShiftType if nds.ShiftType == shifttype][0]
            print('anchor ScopeSelectionShiftUnderCover', nds.Nurse.EmployeeID, nds.Day.DayID, nds.ShiftType.ShiftID)
            return nds
        else:
            print('anchor dayshifttype ScopeSelectionShiftUnderCover', dayshifttype.Day.DayID,
                  dayshifttype.ShiftType.ShiftID)
            return dayshifttype

    def calc_score(self):
        self.Score = self.global_object.KPISoftUnderCover

    def calc_can_be_chosen(self):
        self.CanBeChosen = self.global_object.KPISoftUnderCover > 0