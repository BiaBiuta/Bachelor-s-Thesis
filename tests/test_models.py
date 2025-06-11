import os
import sys
from pathlib import Path

sys.path.append(str(Path(__file__).resolve().parents[1] / 'event-calendar'))

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'ec_tests.test_settings')
import django
django.setup()

from calendarapp.models.global_object import GlobalObject
from calendarapp.models.nurse import Nurse
from calendarapp.models.day import Day
from calendarapp.models.shift_type import ShiftType
from calendarapp.models.nurse_day import NurseDay
from calendarapp.models.nurse_day_shift_type import NurseDayShiftType
from calendarapp.models.day_shift_type import DayShiftType


def build_basic_objects():
    go = GlobalObject(Name='Dept')
    shift = ShiftType(ShiftID='S1', LengthInMins=30, ForbiddenShifts=[], GlobalObject=go)
    nurse = Nurse(
        EmployeeID='N1', MaxShifts='5', MaxTotalMins=90, MinTotalMins=60,
        MaxConsShifts=3, MinConsShifts=1, MinConsDaysOff=1, MaxWeekends=2,
        DaysOff=0, GlobalObject=go
    )
    go.set_relation_nurse(nurse)
    d1 = Day(DayID=0, GlobalObject=go)
    d2 = Day(DayID=1, GlobalObject=go)
    nd1 = NurseDay(Nurse=nurse, Day=d1, IsDayOff=False)
    nd2 = NurseDay(Nurse=nurse, Day=d2, IsDayOff=False)
    NurseDayShiftType(Nurse=nurse, Day=d1, ShiftType=shift, NurseDay=nd1,
                      IsOnRequest=False, IsOffRequest=False,
                      OnRequestWeight=0, OffRequestWeight=0)
    NurseDayShiftType(Nurse=nurse, Day=d2, ShiftType=shift, NurseDay=nd2,
                      IsOnRequest=False, IsOffRequest=False,
                      OnRequestWeight=0, OffRequestWeight=0)
    return go, nurse, shift, d1, d2, nd1, nd2


def test_nurse_min_max_minutes_and_shift_counts():
    go, nurse, shift, d1, d2, nd1, nd2 = build_basic_objects()
    nd1.assign_shift(shift)
    nurse.calc_TotalMinutes()
    assert nurse.TotalMins == 30
    assert round(nurse.minutes_to_min, 2) == 0.5
    assert round(nurse.minutes_to_max, 2) == 1.0
    assert nurse.total_assigned_shifts == 1
    assert nurse.shifts_to_max_total == 2

    nd2.assign_shift(shift)
    nurse.calc_TotalMinutes()
    assert nurse.TotalMins == 60
    assert nurse.minutes_to_min == 0
    assert round(nurse.minutes_to_max, 2) == 0.5
    assert nurse.total_assigned_shifts == 2
    assert nurse.shifts_to_max_total == 1


def test_global_object_totals_and_day_links():
    go, nurse, shift, d1, d2, nd1, nd2 = build_basic_objects()
    nd1.assign_shift(shift)
    nd2.assign_shift(shift)
    nurse.calc_TotalMinutes()

    assert go.total_minutes() == 60
    assert go.total_to_min() == 0
    assert go.total_to_max() == 30

    d1.get_next(go)
    d2.get_prev(go)
    assert d1.Next is d2
    assert d2.Previous is d1

    dst = DayShiftType(Day=d1, ShiftType=shift, NrRequired=1,
                       OverCoverWeight=1, UnderCoverWeight=1)
    d1.DayShiftType.append(dst)
    assert dst.calc_KPISoftUnderCover() == 0
    assert dst.calc_KPISoftOverCover() == 0
    assert d1.calc_KPISoftUnderCover() == 0
    assert d1.calc_KPISoftOverCover() == 0
