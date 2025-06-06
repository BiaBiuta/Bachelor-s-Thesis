from django.db import models
from calendarapp.models.nurse import  Nurse
from calendarapp.models.shift_type import ShiftType
class NurseShiftType(models.Model):
    Nurse = models.ForeignKey(Nurse, to_field="EmployeeID",on_delete=models.CASCADE)
    ShiftType = models.ForeignKey(ShiftType, to_field="ShiftID",on_delete=models.CASCADE)
    MaxShifts = models.IntegerField()
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.ShiftCount = 0
        self.KPIHardMaxNrOfShifts = 0.0
        # Relations
        self.OptScopeNurseShiftType = []
        self.Nurse.set_relation_nurseshifttype(self)
        self.ShiftType.set_relation_nurseshifttype(self)
    def set_relation_optscope_nurseshifttype(self, optscope_nurseshifttype):
        self.OptScopeNurseShiftType.append(optscope_nurseshifttype)

    # Hard KPIs
    def calc_KPIHardMaxNrOfShifts(self):
        shift_count = len([nurseday for nurseday in self.Nurse.NurseDay if nurseday.AssignedShift == self.ShiftType])
        self.ShiftCount = shift_count
        value = max(shift_count - self.MaxShifts, 0)
        self.KPIHardMaxNrOfShifts = value
        return value