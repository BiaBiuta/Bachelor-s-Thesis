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
    Name= models.CharField(max_length=250, unique=True,default="")
    TotalMinutes=models.IntegerField(default=0)
    TotalMinutesToMin=models.IntegerField(default=0)
    TotalMinutesToMax=models.IntegerField(default=0)
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
        return 0.0

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
            x=nurse.calc_KPIHardMinTotalMinutes();
            # print("nurse.calc_KPIHardMinTotalMinutes() =", x, "for nurse =", nurse)
            value = value + x
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


    def total_to_min(self):
        # suma pentru toate asistentele
        total_min=sum(nurse.MinTotalMins for nurse in self.Nurse)
        print(total_min)
        self.TotalMinutesToMin= total_min-self.TotalMinutes
        if self.TotalMinutesToMin<=0:
            self.TotalMinutesToMin=0
        return self.TotalMinutesToMin


    def total_to_max(self):
        total_max= sum(nurse.MaxTotalMins for nurse in self.Nurse)
        self.TotalMinutesToMax= total_max-self.TotalMinutes
        if self.TotalMinutesToMax<=0:
            self.TotalMinutesToMax=0
        return self.TotalMinutesToMax
    def total_minutes(self):
        # suma pentru toate asistentele
        self.TotalMinutes= sum(nurse.TotalMins for nurse in self.Nurse)
        return self.TotalMinutes
