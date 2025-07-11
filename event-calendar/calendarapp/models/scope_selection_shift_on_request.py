import random
from calendarapp.models.scope_selection import ScopeSelection

class ScopeSelectionShiftOnRequest(ScopeSelection):
    def get_opt_scope_anchor(self):
        violating_nursedays = [n.NurseDay for n in self.Optimizer.GlobalObject.Nurse if n.KPISoftShiftOnRequest > 0]
        violating_nursedays = sum(violating_nursedays, [])  # flatten to 1 dimensional
        violating_nursedays = [nd for nd in violating_nursedays if nd.KPISoftShiftOnRequest > 0]
        sorted_violating_nursedays = sorted([nd for nd in violating_nursedays], key=lambda x: (
        x.NrSelectedInOptScope, -x.KPISoftShiftOnRequest, random.random()))
        nurseday = self.Optimizer.select_top_random(sorted_violating_nursedays, self.Optimizer.TopRandomProbability, 1)[
            0]
        nds = [ndshift for ndshift in nurseday.NurseDayShiftType if ndshift.IsOnRequest][0]
        print('anchor ScopeSelectionOnRequest', nds.Nurse.EmployeeID, nds.Day.DayID, nds.ShiftType.ShiftID)
        return nds

    def calc_score(self):
        self.Score = self.global_object.KPISoftShiftOnRequest

    def calc_can_be_chosen(self):
        self.CanBeChosen = self.global_object.KPISoftShiftOnRequest > 0