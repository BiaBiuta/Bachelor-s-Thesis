from django.db import models
from calendarapp.models.global_object import GlobalObject
class ShiftType(models.Model):
    ShiftID = models.CharField(max_length=50,unique=True,primary_key=True)
    LengthInMins = models.FloatField()
    ForbiddenShifts = models.JSONField()
    GlobalObject=models.ForeignKey(GlobalObject, on_delete=models.CASCADE)
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.IsInsideOptScope = False
        # Relations
        self.OptScopeShiftType = []
        self.NurseDayShiftType = []
        self.DayShiftType = []
        self.NurseShiftType = []
        self.AssignedNurseDay = []
        if self.GlobalObject:
            self.GlobalObject.set_relation_shifttype(self)
    def set_relation_nursedayshifttype(self, nursedayshifttype):
        self.NurseDayShiftType.append(nursedayshifttype)

    def set_relation_dayshifttype(self, dayshifttype):
        self.DayShiftType.append(dayshifttype)

    def set_relation_nurseshifttype(self, nurseshifttype):
        self.NurseShiftType.append(nurseshifttype)

    def set_relation_optscope_shifttype(self, optscopeshifttype):
        self.OptScopeShiftType.append(optscopeshifttype)

    def get_nursedayshifttype_nrselectedinoptscope(self, nurses, days):
        value = 0
        for n in nurses:
            for nd in n.NurseDay:
                if nd.Day in days:
                    nds = [ndshift for ndshift in nd.NurseDayShiftType if ndshift.ShiftType == self][0]
                    value = value + nds.NrSelectedInOptScope
        return value
    # Lista schimburilor interzise