
from django.db import models
from calendarapp.models.nurse import  Nurse
from calendarapp.models.shift_type import ShiftType
from calendarapp.models.day import Day
from calendarapp.models.nurse_day  import NurseDay
from calendarapp.models.global_object  import GlobalObject
class NurseDayShiftType(models.Model):
    GlobalObject= models.ForeignKey(GlobalObject, to_field='id',on_delete=models.CASCADE)
    Nurse=models.ForeignKey(Nurse,to_field='EmployeeID', on_delete=models.CASCADE)
    Day=models.ForeignKey(Day,to_field='DayID', on_delete=models.CASCADE)
    ShiftType = models.ForeignKey(ShiftType, to_field='ShiftID', on_delete=models.CASCADE)
    NurseDay = models.ForeignKey(NurseDay, on_delete=models.CASCADE)

    IsAssigned = models.BooleanField(default =False)
    IsOnRequest = models.BooleanField()
    IsOffRequest = models.BooleanField()
    OnRequestWeight = models.FloatField()
    OffRequestWeight = models.FloatField()

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        self.KPISoftShiftOnRequest = 0
        self.KPISoftShiftOffRequest = 0
        self.NrSelectedInOptScope = 0
        # Relations
        self.OptScopeNurseDayShiftType = []
        self.Nurse.set_relation_nursedayshifttype(self)
        self.Day.set_relation_nursedayshifttype(self)
        self.ShiftType.set_relation_nursedayshifttype(self)
        self.NurseDay.set_relation_nursedayshifttype(self)
    def set_relation_optscope_nursedayshifttype(self, optscope_nursedayshifttype):
        self.OptScopeNurseDayShiftType.append(optscope_nursedayshifttype)

    # Soft KPIs
    def calc_KPISoftShiftOnRequest(self):
        value = 0.0
        if self.IsOnRequest and not self.IsAssigned:
            value = self.OnRequestWeight
        self.KPISoftShiftOnRequest = value
        return value

    def calc_KPISoftShiftOffRequest(self):
        value = 0.0
        if self.IsOffRequest and self.IsAssigned:
            value = self.OffRequestWeight
        self.KPISoftShiftOffRequest = value
        return value

    class Meta:
        unique_together = ('Nurse', 'Day', 'ShiftType')
        indexes = [
            models.Index(fields=['Nurse', 'Day', 'ShiftType'],
                         name='idx_nurse_day_shift'),
        ]

    def __str__(self):
        return f"{self.Nurse} – {self.Day} – {self.ShiftType}"