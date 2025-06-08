from django.db import models
from calendarapp.models.global_object import GlobalObject


class ShiftType(models.Model):
    ShiftID = models.CharField(max_length=50,unique=True,primary_key=True)
    LengthInMins = models.FloatField()
    ForbiddenShifts = models.JSONField()
    GlobalObject=models.ForeignKey(GlobalObject, on_delete=models.CASCADE)
    def __init__(self, *args, **kwargs):
        """Initialize the model without touching the FK when it's not set."""
        global_object = kwargs.get("GlobalObject")
        super().__init__(*args, **kwargs)
        self.IsInsideOptScope = False
        # Relations
        self.OptScopeShiftType = []
        self.NurseDayShiftType = []
        self.DayShiftType = []
        self.NurseShiftType = []
        self.AssignedNurseDay = []

        # Avoid accessing the related object before it's available. Using
        # ``GlobalObject_id`` bypasses the descriptor, preventing
        # ``RelatedObjectDoesNotExist`` when the admin instantiates an empty
        # form.
        if isinstance(global_object, GlobalObject):
            global_object.set_relation_shifttype(self)
        elif getattr(self, "GlobalObject_id", None):
            try:
                self.GlobalObject.set_relation_shifttype(self)
            except GlobalObject.DoesNotExist:
                pass
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