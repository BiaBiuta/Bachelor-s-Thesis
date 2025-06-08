import math

from django.db import models
from django.contrib.auth.models import AbstractUser
from django.utils.html import format_html
DAY_CHOICES = [
        ('Monday', 'Monday'),
        ('Tuesday', 'Tuesday'),
        ('Wednesday', 'Wednesday'),
        ('Thursday', 'Thursday'),
        ('Friday', 'Friday'),
    ]
time_slots = (
    ('9:30 - 10:30', '9:30 - 10:30'),
    ('10:30 - 11:30', '10:30 - 11:30'),
    ('11:30 - 12:30', '11:30 - 12:30'),
    ('12:30 - 1:30', '12:30 - 1:30'),
    ('2:30 - 3:30', '2:30 - 3:30'),
    ('3:30 - 4:30', '3:30 - 4:30'),
    ('4:30 - 5:30', '4:30 - 5:30'),
)

SESSION = [
        ('Tutorial', 'Tutorial'),
        ('Lecture', 'Lecture'),
        ('Lab', 'Lab'),
        ('Discussion', 'Discussion'),
        ('Presentation', 'Presentation'),
    ]



class Instructor(AbstractUser):
    #Uid=models.CharField(max_length=6)
    FirstName = models.CharField(max_length=100,null=True)
    MiddleName = models.CharField(max_length=100,null=True)
    LastName = models.CharField(max_length=100,null=True)
    #Department=models.ForeignKey(Department,on_delete=models.CASCADE,null=True)
    RegisteredDate = models.DateTimeField(auto_now_add=True)
    class Meta:
      verbose_name = "Instructor"
      verbose_name_plural = "Instructor"
    def __str__(self):
        return self.username
class CourseName(models.Model):
    Course = models.CharField(max_length=5)
    CourseCode = models.CharField(max_length=100,primary_key=True)
    RegisteredDate = models.DateTimeField(auto_now_add=True)
    Max_numb_students = models.CharField(max_length=65,default=0)
    CourseDescription= models.CharField(max_length=200)
    Instructors = models.ManyToManyField(Instructor)
    def __str__(self):
        return self.Course

    class Meta:
        unique_together = (('Course', 'CourseCode'),)
class Department(models.Model):
    DepartmentName = models.CharField(max_length=100,primary_key=True)
    HeadOfDepartment = models.CharField(max_length=100)
    RegisteredDate = models.DateTimeField(auto_now_add=True)
    Courses=models.ManyToManyField(CourseName)
    class Meta:
      verbose_name = "Department"
      verbose_name_plural = "Department"
    def __str__(self):
        return self.DepartmentName

class TimeTableMain(models.Model):
    YearOfStudy = models.CharField(max_length=9)
    Programme = models.CharField(max_length=100,primary_key=True,editable=True)
    Semister  = models.CharField(max_length=100)
    Department=models.ForeignKey(Department,on_delete=models.CASCADE)
    RegisteredDate = models.DateTimeField(auto_now_add=True)
    def __str__(self):
        return self.Programme



class Venue(models.Model):
    Venue = models.CharField(max_length=50,primary_key=True)
    #SeatingCapacity = models.IntegerField(default=0)
    RegisteredDate = models.DateTimeField(auto_now_add=True)
    def __str__(self):
        return self.Venue


class MeetingTime(models.Model):
    pid = models.AutoField(primary_key=True)
    day = models.CharField(max_length=20, choices=DAY_CHOICES)
    time = models.TimeField()

    def __str__(self):
        return f"{self.day} {self.time}"


class Section(models.Model):
    section_id = models.CharField(max_length=20, primary_key=True)
    department = models.ForeignKey(Department, on_delete=models.CASCADE)
    num_class_in_week = models.IntegerField()
    course = models.ForeignKey(CourseName, on_delete=models.CASCADE, blank=True, null=True)
    meeting_time = models.ForeignKey(MeetingTime, on_delete=models.CASCADE, blank=True, null=True)
    room = models.ForeignKey(Venue, on_delete=models.CASCADE, blank=True, null=True)
    instructor = models.ForeignKey(Instructor, on_delete=models.CASCADE, blank=True, null=True)

    def set_room(self, room):
        section = Section.objects.get(pk = self.section_id)
        section.room = room
        section.save()

    def set_meetingTime(self, meetingTime):
        section = Section.objects.get(pk = self.section_id)
        section.meeting_time = meetingTime
        section.save()

    def set_instructor(self, instructor):
        section = Section.objects.get(pk=self.section_id)
        section.instructor = instructor
        section.save()

    def __str__(self):
        return self.section_id


class TimeTable(models.Model):
    CourseName = models.ForeignKey(CourseName, on_delete=models.CASCADE)
    Instructor=models.ForeignKey(Instructor,on_delete=models.CASCADE)
    Venue = models.ForeignKey(Venue,on_delete=models.CASCADE)
    Timestart = models.TimeField()
    TimeEnd = models.TimeField()
    Day = models.CharField(max_length=100, choices=DAY_CHOICES)
    Programme=models.ForeignKey(TimeTableMain,on_delete=models.CASCADE)
    RegisteredDate = models.DateTimeField(auto_now_add=True)
    SessionType= models.CharField(max_length=100, choices=SESSION)

from django.db import models




class GlobalObject(models.Model):
    HorizonLength = models.IntegerField(default=0)
    TotalKPIHard = models.FloatField(default=0.0)
    KPIHardOneShiftOneDay = models.FloatField(default=0.0)
    KPIHardShiftRotation = models.FloatField(default=0.0)
    KPIHardMaxNrOfShifts = models.FloatField(default=0.0)
    KPIHardMaxTotalMinutes = models.FloatField(default=0.0)
    KPIHardMinTotalMinutes = models.FloatField(default=0.0)
    KPIHardMaxConsShifts = models.FloatField(default=0.0)
    KPIHardMinConsShifts = models.FloatField(default=0.0)
    KPIHardMinConsDaysOff = models.FloatField(default=0.0)
    KPIHardMaxNrWeekend = models.FloatField(default=0.0)
    KPIHardDaysOff = models.FloatField(default=0.0)
    KPISoftShiftOnRequest = models.FloatField(default=0.0)
    KPISoftShiftOffRequest = models.FloatField(default=0.0)
    KPISoftUnderCover = models.FloatField(default=0.0)
    KPISoftOverCover = models.FloatField(default=0.0)
    KPITotalKPISoft = models.FloatField(default=0.0)
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.Nurse = []
        self.Day = []
        self.ShiftType = []
        self.Optimizer = []
    def __str__(self):
        return 'GlobalObject'
    def get_nurses(self):
        return self.Nurse

    def set_relation_nurse(self, nurse):
        self.Nurse.append(nurse)

    def set_relation_day(self, day):
        self.Day.append(day)
        print ("am setat global object ",self.Day , self.id)

    def set_relation_shifttype(self, shifttype):
        self.ShiftType.append(shifttype)

    def set_relation_optimizer(self, optimizer):
        self.Optimizer.append(optimizer)

    def unassign_shifts(self):
        for nurse in self.Nurse:
            nurse.unassign_shifts()

    def reset_isinsideoptscope(self):
        for nurse in self.Nurse:
            nurse.IsInsideOptScope = False
            for nurseday in nurse.NurseDay:
                nurseday.IsInsideOptScope = False
        for day in self.Day:
            day.IsInsideOptScope = False
        for shifttype in self.ShiftType:
            shifttype.IsInsideOptScope = False

    def set_isinsideoptscope(self, nurses, days, shifttypes):
        for nurse in nurses:
            nurse.IsInsideOptScope = True
            for nurseday in nurse.NurseDay:
                if nurseday.Day in days:
                    nurseday.IsInsideOptScope = True
        for day in days:
            day.IsInsideOptScope = True
        for shifttype in shifttypes:
            shifttype.IsInsideOptScope = True

    # Hard KPI Calc
    def calc_KPIHardOneShiftOneDay(self):
        self.KPIHardOneShiftOneDay = 0.0
        return 0.0  # This model cannot assign more than one shifts in a NurseDay

    def calc_KPIHardShiftRotation(self):
        value = 0
        for nurse in self.Nurse:
            value = value + nurse.calc_KPIHardShiftRotation()
        self.KPIHardShiftRotation = value
        return value

    def calc_KPIHardMaxNrOfShifts(self):
        value = 0
        for nurse in self.Nurse:
            value = value + nurse.calc_KPIHardMaxNrOfShifts()
        self.KPIHardMaxNrOfShifts = value
        return value

    def calc_KPIHardMaxTotalMinutes(self):
        value = 0
        for nurse in self.Nurse:
            value = value + nurse.calc_KPIHardMaxTotalMinutes()
        self.KPIHardMaxTotalMinutes = value
        return value

    def calc_KPIHardMinTotalMinutes(self):
        value = 0
        for nurse in self.Nurse:
            value = value + nurse.calc_KPIHardMinTotalMinutes()
        self.KPIHardMinTotalMinutes = value
        return value

    def calc_KPIHardMaxConsShifts(self):
        value = 0
        for nurse in self.Nurse:
            value = value + nurse.calc_KPIHardMaxConsShifts()
        self.KPIHardMaxConsShifts = value
        return value

    def calc_KPIHardMinConsShifts(self):
        value = 0
        for nurse in self.Nurse:
            value = value + nurse.calc_KPIHardMinConsShifts()
        self.KPIHardMinConsShifts = value
        return value

    def calc_KPIHardMinConsDaysOff(self):
        value = 0
        for nurse in self.Nurse:
            value = value + nurse.calc_KPIHardMinConsDaysOff()
        self.KPIHardMinConsDaysOff = value
        return value

    def calc_KPIHardMaxNrWeekend(self):
        value = 0
        for nurse in self.Nurse:
            value = value + nurse.calc_KPIHardMaxNrWeekend()
        self.KPIHardMaxNrWeekend = value
        return value

    def calc_KPIHardDaysOff(self):
        value = 0
        for nurse in self.Nurse:
            value = value + nurse.calc_KPIHardDaysOff()
        self.KPIHardDaysOff = value
        return value

    def calc_TotalKPIHard(self, is_print):
        value = self.calc_KPIHardOneShiftOneDay() + self.calc_KPIHardShiftRotation() + self.calc_KPIHardMaxNrOfShifts() \
                + self.calc_KPIHardMaxTotalMinutes() + self.calc_KPIHardMinTotalMinutes() + self.calc_KPIHardMaxConsShifts() \
                + self.calc_KPIHardMinConsShifts() + self.calc_KPIHardMinConsDaysOff() + self.calc_KPIHardMaxNrWeekend() + self.calc_KPIHardDaysOff()
        self.TotalKPIHard = value

        if is_print:
            print('KPIHardOneShiftOneDay', self.KPIHardOneShiftOneDay)
            print('KPIHardShiftRotation', self.KPIHardShiftRotation)
            print('KPIHardMaxNrOfShifts', self.KPIHardMaxNrOfShifts)
            print('KPIHardMaxTotalMinutes', self.KPIHardMaxTotalMinutes)
            print('KPIHardMinTotalMinutes', self.KPIHardMinTotalMinutes)
            print('KPIHardMaxConsShifts', self.KPIHardMaxConsShifts)
            print('KPIHardMinConsShifts', self.KPIHardMinConsShifts)
            print('KPIHardMinConsDaysOff', self.KPIHardMinConsDaysOff)
            print('KPIHardMaxNrWeekend', self.KPIHardMaxNrWeekend)
            print('KPIHardDaysOff', self.KPIHardDaysOff)

        return value

    # Soft KPIs
    def calc_KPISoftShiftOnRequest(self):
        value = 0
        for nurse in self.Nurse:
            value = value + nurse.calc_KPISoftShiftOnRequest()
        self.KPISoftShiftOnRequest = value
        return value

    def calc_KPISoftShiftOffRequest(self):
        value = 0
        for nurse in self.Nurse:
            value = value + nurse.calc_KPISoftShiftOffRequest()
        self.KPISoftShiftOffRequest = value
        return value

    def calc_KPISoftUnderCover(self):
        value = 0
        for day in self.Day:
            value = value + day.calc_KPISoftUnderCover()
        self.KPISoftUnderCover = value
        return value

    def calc_KPISoftOverCover(self):
        value = 0
        for day in self.Day:
            value = value + day.calc_KPISoftOverCover()
        self.KPISoftOverCover = value
        return value

    def calc_TotalKPISoft(self, is_print):
        value = self.calc_KPISoftShiftOnRequest() + self.calc_KPISoftShiftOffRequest() + self.calc_KPISoftUnderCover() + self.calc_KPISoftOverCover()
        self.TotalKPISoft = value

        if is_print:
            print('KPISoftShiftOnRequest', self.KPISoftShiftOnRequest)
            print('KPISoftShiftOffRequest', self.KPISoftShiftOffRequest)
            print('KPISoftUnderCover', self.KPISoftUnderCover)
            print('KPISoftOverCover', self.KPISoftOverCover)

        return value

#
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

    def __init__(self, *args,  **kwargs):
        super().__init__(*args, **kwargs)
        self.TotalMins = 0.0
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



class Day(models.Model):
    DayID = models.CharField(max_length=50, unique=True,primary_key=True)
    #WeekID = models.CharField(max_length=50)
    #IsWeekend = models.BooleanField()
    GlobalObject=models.ForeignKey(GlobalObject, on_delete=models.CASCADE, related_name="days")
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
        print ("in clasa Day ",self.GlobalObject.Day)
    def set_relation_nurseday(self, nurseday):
        self.NurseDay.append(nurseday)

    def set_relation_nursedayshifttype(self, nursedayshifttype):
        self.NurseDayShiftType.append(nursedayshifttype)

    def set_relation_dayshifttype(self, dayshifttype):
        self.DayShiftType.append(dayshifttype)

    def set_relation_optscope_day(self, optscopeday):
        self.OptScopeDay.append(optscopeday)

    def get_next(self):
        next = [d for d in self.GlobalObject.Day if int(d.DayID) == int(self.DayID)+ 1]
        if len(next) > 0:
            self.Next = next[0]

    def get_prev(self):
        prev = [d for d in self.GlobalObject.Day if int(d.DayID) == int(self.DayID) - 1]
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


class NurseDay(models.Model):
    Nurse = models.ForeignKey(Nurse, to_field="EmployeeID",on_delete=models.CASCADE)
    Day = models.ForeignKey(Day,to_field="DayID", on_delete=models.CASCADE)
    IsDayOff = models.BooleanField()
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.Nurse.set_relation_nurseday(self)
        self.Day.set_relation_nurseday(self)
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
        next = [nd for nd in self.Nurse.NurseDay if int(nd.Day.DayID) == int(self.Day.DayID) + 1]
        if len(next) > 0:
            self.Next = next[0]

    def get_prev(self):
        prev = [nd for nd in self.Nurse.NurseDay if int(nd.Day.DayID) == int(self.Day.DayID) - 1]
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

class NurseDayShiftType(models.Model):
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

class DayShiftType(models.Model):
    Day = models.ForeignKey(Day,to_field="DayID", on_delete=models.CASCADE)
    ShiftType = models.ForeignKey(ShiftType,to_field="ShiftID", on_delete=models.CASCADE)
    NrRequired = models.IntegerField()
    OverCoverWeight = models.IntegerField()
    UnderCoverWeight = models.IntegerField()
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