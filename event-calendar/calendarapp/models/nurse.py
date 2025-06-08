from django.db import models
from calendarapp.models.global_object  import GlobalObject
from django.contrib.auth import get_user_model

from calendarapp.models.day import Day

# User = get_user_model()

class Nurse(models.Model):
    EmployeeID = models.CharField(max_length=50, unique=True,primary_key=True)
    MaxShifts = models.CharField(max_length=400)
    MaxTotalMins = models.IntegerField()
    MinTotalMins = models.IntegerField()
    MaxConsShifts = models.IntegerField()
    MinConsShifts = models.IntegerField()
    MinConsDaysOff = models.IntegerField()
    MaxWeekends = models.IntegerField()
    DaysOff = models.FloatField()  # Lista de zile libere
    GlobalObject=models.ForeignKey(GlobalObject, on_delete=models.CASCADE)
    TotalMins=models.IntegerField(default=0)
    def __init__(self, *args,  **kwargs):
        super().__init__(*args, **kwargs)
        # self.TotalMins = 0.0
        self.KPIHardShiftRotation = 0.0
        self.KPIHardMaxNrOfShifts = 0.0
        self.KPIHardMaxTotalMinutes = 0.0
        self.KPIHardMinTotalMinutes = 0.0
        self.KPIHardMaxConsShifts = 0.0
        self.KPIHardMinConsShifts = 0.0
        self.KPIHardMinConsDaysOff = 0.0
        self.KPIHardMaxNrWeekend = 0.0
        self.KPIHardDaysOff = 0.0
        self.KPISoftShiftOnRequest = 0.0
        self.KPISoftShiftOffRequest = 0.0
        self.IsInsideOptScope = False
        self.NurseDay = []
        self.NurseDayShiftType = []
        self.NurseShiftType = []
        self.OptScopeNurse = []
        # Avoid accessing the related object before it's set (e.g. when the
        # admin creates a blank form instance). Using ``GlobalObject_id``
        # bypasses the descriptor which would otherwise raise
        # ``RelatedObjectDoesNotExist`` when the FK is ``None``.
        if getattr(self, "GlobalObject_id", None):
            try:
                self.GlobalObject.set_relation_nurse(self)
            except GlobalObject.DoesNotExist:
                pass

    def __str__(self):
        return f"Nurse {self.EmployeeID}"
    def set_relation_nurseday(self, nurseday):
        self.NurseDay.append(nurseday)

    def set_relation_nurseshifttype(self, nurseshifttype):
        self.NurseShiftType.append(nurseshifttype)

    def set_relation_nursedayshifttype(self, nursedayshifttype):
        self.NurseDayShiftType.append(nursedayshifttype)

    def set_relation_optscope_nurse(self, optscope_nurse):
        self.OptScopeNurse.append(optscope_nurse)

    def unassign_shifts(self):
        for nurseday in self.NurseDay:
            nurseday.unassign_shift()

    def can_plan_shifttype(self, shifttype):
        nurse_shifttype = [ns for ns in self.NurseShiftType if ns.ShiftType == shifttype]
        value = False
        if len(nurse_shifttype) > 0:
            nurse_shifttype_instance = nurse_shifttype[0]
            value = nurse_shifttype_instance.MaxShifts > 0
        return value

    def get_nurseday_nrselectedinoptscope(self, days):
        value = 0
        for nd in self.NurseDay:
            if nd.Day in days:
                value = value + nd.NrSelectedInOptScope
        return value

    # Hard KPIs
    def calc_KPIHardShiftRotation(self):
        value = 0
        for nurseday in self.NurseDay:
            value = value + nurseday.calc_KPIHardShiftRotation()
        self.KPIHardShiftRotation = value
        return value

    def calc_KPIHardMaxNrOfShifts(self):
        value = 0
        for nurseshifttype in self.NurseShiftType:
            value = value + nurseshifttype.calc_KPIHardMaxNrOfShifts()
        self.KPIHardMaxNrOfShifts = value
        return value

    def calc_TotalMinutes(self):
        total_mins = 0
        for nd in self.NurseDay:
            if nd.AssignedShift != []:
                total_mins = total_mins + nd.AssignedShift.LengthInMins
        self.TotalMins = total_mins

    def calc_KPIHardMaxTotalMinutes(self):
        self.calc_TotalMinutes()
        value = max(self.TotalMins - self.MaxTotalMins, 0)
        self.KPIHardMaxTotalMinutes = value
        return value

    def calc_KPIHardMinTotalMinutes(self):
        self.calc_TotalMinutes()
        value = max(self.MinTotalMins - self.TotalMins, 0)
        self.KPIHardMinTotalMinutes = value
        return value

    def calc_KPIHardMaxConsShifts(self):
        value = 0
        for nurseday in self.NurseDay:
            value = value + nurseday.calc_KPIHardMaxConsShifts()
        self.KPIHardMaxConsShifts = value
        return value

    def calc_KPIHardMinConsShifts(self):
        value = 0
        for nurseday in self.NurseDay:
            value = value + nurseday.calc_KPIHardMinConsShifts()
        self.KPIHardMinConsShifts = value
        return value

    def calc_KPIHardMinConsDaysOff(self):
        value = 0
        for nurseday in self.NurseDay:
            value = value + nurseday.calc_KPIHardMinConsDaysOff()
        self.KPIHardMinConsDaysOff = value
        return value

    def calc_KPIHardMaxNrWeekend(self):
        nurse_days_weekend_work = [nd for nd in self.NurseDay if nd.AssignedShift != [] and nd.Day.IsWeekend]
        weekend_work = [nd.Day.WeekID for nd in nurse_days_weekend_work]
        nr_weekend_work = len(set(weekend_work))
        value = max(nr_weekend_work - self.MaxWeekends, 0)
        self.KPIHardMaxNrWeekend = value
        return value

    def calc_KPIHardDaysOff(self):
        value = 0
        for nurseday in self.NurseDay:
            value = value + nurseday.calc_KPIHardDaysOff()
        self.KPIHardDaysOff = value
        return value

    # Soft KPIs
    def calc_KPISoftShiftOnRequest(self):
        value = 0
        for nurseday in self.NurseDay:
            value = value + nurseday.calc_KPISoftShiftOnRequest()
        self.KPISoftShiftOnRequest = value
        return value

    def calc_KPISoftShiftOffRequest(self):
        value = 0
        for nurseday in self.NurseDay:
            value = value + nurseday.calc_KPISoftShiftOffRequest()
        self.KPISoftShiftOffRequest = value
        return value

    @property
    def minutes_to_min(self):
        # Asigurăm TotalMins actualizat
        self.calc_TotalMinutes()
        # Cât îi mai lipsește ca să ajungă la MINIMUM
        return max(self.MinTotalMins - self.TotalMins, 0)/60

    @property
    def minutes_to_max(self):
        #self.calc_TotalMinutes()
        # Cât îi mai rămâne până la MAXIMUM
        return max(self.MaxTotalMins - self.TotalMins, 0)/60

    @property
    def total_assigned_shifts(self):
        # Număr de zile în care AssignedShift nu e gol
        return sum(1 for nd in self.NurseDay if nd.AssignedShift)


    @property
    def shifts_to_max_total(self):
        """
        Similar, câte ture mai puteţi aloca până la limita MaxTotalShifts
        (câmp custom necesar):
        """
        return max(self.MaxConsShifts - self.total_assigned_shifts, 0)

