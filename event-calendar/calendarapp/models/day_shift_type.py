from django.db import models

from calendarapp.models.shift_type import ShiftType
from calendarapp.models.day import Day

class DayShiftType(models.Model):
    Day = models.ForeignKey(Day,to_field="DayID", on_delete=models.CASCADE)
    ShiftType = models.ForeignKey(ShiftType,to_field="ShiftID", on_delete=models.CASCADE)
    NrRequired = models.IntegerField()
    OverCoverWeight = models.IntegerField()
    UnderCoverWeight = models.IntegerField()
    ActualyNrCovered = models.IntegerField(default=0)
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.NrCovered = 0
        self.KPISoftOverCover = 0
        self.KPISoftUnderCover = 0
        self.NrSelectedInOptScope = 0
        self.OptScopeDayShiftType = []
        self.ShiftType.set_relation_dayshifttype(self)
        self.Day.set_relation_dayshifttype(self)
    def set_relation_optscope_dayshifttype(self, optscope_dayshifttype):
        self.OptScopeDayShiftType.append(optscope_dayshifttype)

    # Soft KPIs
    def calc_NrCovered(self):
        value = 0
        for nurseday in self.Day.NurseDay:
            if nurseday.AssignedShift == self.ShiftType:
                value += 1
        self.NrCovered = value
        return value

    def calc_KPISoftUnderCover(self):
        self.calc_NrCovered()
        value = max(self.NrRequired - self.NrCovered, 0) * self.UnderCoverWeight
        self.KPISoftUnderCover = value
        return value

    def calc_KPISoftOverCover(self):
        self.calc_NrCovered()
        value = max(self.NrCovered - self.NrRequired, 0) * self.OverCoverWeight
        self.KPISoftOverCover = value
        return value

    def gap_required_vs_actual(self):
        return self.NrRequired - self.ActualyNrCovered