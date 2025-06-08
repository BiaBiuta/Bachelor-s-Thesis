
from django.db import models
from calendarapp.models.nurse import Nurse
from calendarapp.models.day import Day


class NurseDay(models.Model):
    Nurse = models.ForeignKey(Nurse, to_field="EmployeeID",on_delete=models.CASCADE)
    Day = models.ForeignKey(Day,to_field="DayID", on_delete=models.CASCADE)
    IsDayOff = models.BooleanField()
    def __init__(self, *args, **kwargs):
        """Initialize without touching FKs when they are not provided."""
        nurse = kwargs.get("Nurse")
        day = kwargs.get("Day")
        super().__init__(*args, **kwargs)

        if isinstance(nurse, Nurse):
            nurse.set_relation_nurseday(self)
        elif getattr(self, "Nurse_id", None):
            try:
                self.Nurse.set_relation_nurseday(self)
            except Nurse.DoesNotExist:
                pass

        if isinstance(day, Day):
            day.set_relation_nurseday(self)
        elif getattr(self, "Day_id", None):
            try:
                self.Day.set_relation_nurseday(self)
            except Day.DoesNotExist:
                pass
        self.FirstWorkingBlock_ConsecutiveWorkingDays = 0
        self.FirstDayOffBlock_ConsecutiveDayOffs = 0
        self.KPIHardShiftRotation = 0.0
        self.KPIHardMaxConsShifts = 0.0
        self.KPIHardMinConsShifts = 0.0
        self.KPIHardMinConsDaysOff = 0.0
        self.KPIHardDaysOff = 0.0
        self.KPISoftShiftOnRequest = 0.0
        self.KPISoftShiftOffRequest = 0.0
        self.IsInsideOptScope = False
        self.NrSelectedInOptScope = 0
        # Relations
        self.OptScopeNurseDay = []
        self.NurseDayShiftType = []
        self.AssignedShift = []
        self.BestSolution_AssignedShift = []
        self.Next = []
        self.Previous = []
    def set_relation_nursedayshifttype(self, nursedayshifttype):
        self.NurseDayShiftType.append(nursedayshifttype)

    def set_relation_optscope_nurseday(self, optscopenurseday):
        self.OptScopeNurseDay.append(optscopenurseday)

    def get_next(self):
        next=[]
        if isinstance(self.Day.DayID, int):
            next = [nd for nd in self.Nurse.NurseDay if nd.Day.DayID== self.Day.DayID + 1]
        elif isinstance(self.Day.DayID, str):
            next = [nd for nd in self.Nurse.NurseDay if int(nd.Day.DayID[1:]) == int(self.Day.DayID[1:]) + 1]
        if len(next) > 0:
            self.Next = next[0]

    def get_prev(self):
        if isinstance(self.Day.DayID, int):
            prev = [nd for nd in self.Nurse.NurseDay if nd.Day.DayID == self.Day.DayID -1]
        elif isinstance(self.Day.DayID, str):
            prev = [nd for nd in self.Nurse.NurseDay if int(nd.Day.DayID[1:]) == int(self.Day.DayID[1:]) - 1]
        if len(prev) > 0:
            self.Previous = prev[0]

    def assign_shift(self, shifttype):
        self.unassign_shift()
        if shifttype != []:
            self.AssignedShift = shifttype
            shifttype.AssignedNurseDay.append(self)
            nursedayshifttype = [nds for nds in self.NurseDayShiftType if nds.ShiftType == shifttype]
            if len(nursedayshifttype) > 0:
                nds = nursedayshifttype[0]
                nds.IsAssigned = True

    def unassign_shift(self):
        if self.AssignedShift != []:
            shifttype = self.AssignedShift
            shifttype.AssignedNurseDay.remove(self)
            self.AssignedShift = []
            nursedayshifttype = [nds for nds in self.NurseDayShiftType if nds.ShiftType == shifttype]
            if len(nursedayshifttype) > 0:
                nds = nursedayshifttype[0]
                nds.IsAssigned = False

    # Hard KPIs
    def calc_KPIHardShiftRotation(self):
        # Return 0 immediately if:
        # 1. There's no assigned shift on this NurseDay
        # 2. There's assigned shift, but no forbidden shifts
        # 3. This is the last day in planning horizon
        # 4. There's no planned shift the next day
        value = 0.0
        if self.AssignedShift == [] or self.AssignedShift.ForbiddenShifts == [] or self.Next == [] or self.Next.AssignedShift == []:
            value = 0.0
        else:  # Check if the next day's planned shift is forbidden
            if self.Next.AssignedShift.ShiftID in self.AssignedShift.ForbiddenShifts:
                value = 1.0
            else:
                value = 0.0
        self.KPIHardShiftRotation = value
        return value

    def calc_FirstWorkingBlock_ConsecutiveWorkingDays(self, is_outside_planning_all_shifts):
        # Only calculate for the first day of a working block
        value = 0
        # is_first_day_working_block:
        # is_outside_planning_all_shifts = False --> if this is the first NurseDay, assume is_first_day_working_block always True
        # is_outside_planning_all_shifts = True --> if this is the first NurseDay, assume is_first_day_working_block always False
        is_first_day_working_block = self.AssignedShift != [] and (
                    self.Previous == [] or self.Previous.AssignedShift == [])
        if is_outside_planning_all_shifts:
            is_first_day_working_block = self.AssignedShift != [] and self.Previous != [] and self.Previous.AssignedShift == []

        if is_first_day_working_block:
            # Calculate consecutive working days
            pointer = self
            while pointer != [] and pointer.AssignedShift != []:
                value += 1
                pointer = pointer.Next
                # If we've reached the last day of planning horizon, add infinite number to not penalize wrongly (only for MinConsShift)
                if is_outside_planning_all_shifts and pointer == []:
                    value += float('inf')
        self.FirstWorkingBlock_ConsecutiveWorkingDays = value

    def calc_KPIHardMaxConsShifts(self):
        self.calc_FirstWorkingBlock_ConsecutiveWorkingDays(is_outside_planning_all_shifts=False)
        if self.FirstWorkingBlock_ConsecutiveWorkingDays == 0:
            value = 0
            self.KPIHardMaxConsShifts = value
            return value
        value = max(self.FirstWorkingBlock_ConsecutiveWorkingDays - self.Nurse.MaxConsShifts, 0)
        self.KPIHardMaxConsShifts = value
        return value

    def calc_KPIHardMinConsShifts(self):
        self.calc_FirstWorkingBlock_ConsecutiveWorkingDays(is_outside_planning_all_shifts=True)
        if self.FirstWorkingBlock_ConsecutiveWorkingDays == 0:
            value = 0
            self.KPIHardMinConsShifts = value
            return value
        value = max(self.Nurse.MinConsShifts - self.FirstWorkingBlock_ConsecutiveWorkingDays, 0)
        self.KPIHardMinConsShifts = value
        return value

    def calc_FirstDayOffBlock_ConsecutiveDayOffs(self):
        # Only calculate for the first day of a dayoff block
        # If there's shift assigned, return 0
        # If this is the first day of the planning horizon, return 0
        # If there's no shift assigned but previous day also has no shift assigned, return 0
        if self.AssignedShift != [] or self.Previous == [] or (
                self.AssignedShift == [] and self.Previous != [] and self.Previous.AssignedShift == []):
            value = 0
        else:
            # Calculate consecutive day offs
            value = 0
            pointer = self
            while pointer != [] and pointer.AssignedShift == []:
                value += 1
                pointer = pointer.Next
                if pointer == []:  # If we've reached the last day of planning horizon, add infinite number to not penalize wrongly
                    value += float('inf')
        self.FirstDayOffBlock_ConsecutiveDayOffs = value

    def calc_KPIHardMinConsDaysOff(self):
        self.calc_FirstDayOffBlock_ConsecutiveDayOffs()
        if self.FirstDayOffBlock_ConsecutiveDayOffs == 0:
            value = 0
            self.KPIHardMinConsDaysOff = value
            return value
        value = max(self.Nurse.MinConsDaysOff - self.FirstDayOffBlock_ConsecutiveDayOffs, 0)
        self.KPIHardMinConsDaysOff = value
        return value

    def calc_KPIHardDaysOff(self):
        value = 0.0
        if self.IsDayOff and self.AssignedShift != []:
            value = 1.0
        self.KPIHardDaysOff = value
        return value

    # Soft KPIs
    def calc_KPISoftShiftOnRequest(self):
        value = 0
        for nursedayshifttype in self.NurseDayShiftType:
            if nursedayshifttype.IsOnRequest:
                value = value + nursedayshifttype.calc_KPISoftShiftOnRequest()
        self.KPISoftShiftOnRequest = value
        return value

    def calc_KPISoftShiftOffRequest(self):
        value = 0
        for nursedayshifttype in self.NurseDayShiftType:
            if nursedayshifttype.IsOffRequest:
                value = value + nursedayshifttype.calc_KPISoftShiftOffRequest()
        self.KPISoftShiftOffRequest = value
        return value

    class Meta:
        # Variante posibile (alegeţi una dintre cele două)
        # 1) unique_together (metodă compatibilă cu versiuni mai vechi de Django)
        unique_together = ('Nurse', 'Day')

        # 2) UniqueConstraint (mai explicit și recomandat în Django ≥ 2.2)
        # constraints = [
        #     models.UniqueConstraint(
        #         fields=['Nurse', 'Day'],
        #         name='unique_nurse_day'
        #     )
        # ]

        indexes = [
            models.Index(fields=['Nurse', 'Day'], name='idx_nurse_day'),
        ]
        verbose_name = 'NurseDay'
        verbose_name_plural = 'NurseDays'

    def __str__(self):
        return f"{self.Nurse} – {self.Day} (DayOff: {self.IsDayOff})"