import math

from calendarapp.models.global_object import GlobalObject
from django.db import models
class Day(models.Model):
    DayID = models.CharField(max_length=50, unique=True,primary_key=True)
    #WeekID = models.CharField(max_length=50)
    #IsWeekend = models.BooleanField()
    GlobalObject=models.ForeignKey(GlobalObject, on_delete=models.CASCADE, related_name="days")

    class Meta:
        unique_together = ( 'GlobalObject', 'DayID')
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.IsWeekend = int(self.DayID) % 7 == 5 or int(self.DayID) % 7 == 6
        self.WeekID = math.floor(int(self.DayID) / 7)
        self.KPISoftUnderCover = 0.0
        self.KPISoftOverCover = 0.0
        self.IsInsideOptScope = False
        self.NurseDay = []
        self.NurseDayShiftType = []
        self.DayShiftType = []
        self.Next = []
        self.Previous = []
        self.OptScopeDay = []
        self.GlobalObject.set_relation_day(self)

    def set_relation_nurseday(self, nurseday):
        self.NurseDay.append(nurseday)

    def set_relation_nursedayshifttype(self, nursedayshifttype):
        self.NurseDayShiftType.append(nursedayshifttype)

    def set_relation_dayshifttype(self, dayshifttype):
        self.DayShiftType.append(dayshifttype)

    def set_relation_optscope_day(self, optscopeday):
        self.OptScopeDay.append(optscopeday)

    def get_next(self,global_object):
        next=[]
        if isinstance(self.DayID, int):
            next = [d for d in global_object.Day if d.DayID == self.DayID+ 1]
        elif isinstance(self.DayID, str):
            # varianta pentru str
            next = [
                d for d in global_object.Day
                if int(d.DayID[1:]) == int(self.DayID[1:]) + 1
            ]
        if len(next) > 0:
            self.Next = next[0]


    def get_prev(self,global_object):
        prev=[]
        if isinstance(self.DayID, int):
            prev = [d for d in global_object.Day if d.DayID ==self.DayID - 1]
        elif isinstance(self.DayID, str):
            prev = [d for d in global_object.Day if int(d.DayID[1:]) == int(self.DayID[1:]) - 1]
        if len(prev) > 0:
            self.Previous = prev[0]


    def unassign_shifts(self):
        for nurseday in self.NurseDay:
            nurseday.unassign_shift()

    # Soft KPIs
    def calc_KPISoftUnderCover(self):
        value = 0
        for dayshifttype in self.DayShiftType:
            value = value + dayshifttype.calc_KPISoftUnderCover()
        self.KPISoftUnderCover = value
        return value

    def calc_KPISoftOverCover(self):
        value = 0
        for dayshifttype in self.DayShiftType:
            value = value + dayshifttype.calc_KPISoftOverCover()
        self.KPISoftOverCover = value
        return value