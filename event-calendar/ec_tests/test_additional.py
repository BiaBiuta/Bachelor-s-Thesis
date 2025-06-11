import os
import sys
from pathlib import Path

sys.path.append(str(Path(__file__).resolve().parents[1]))
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'ec_tests.test_settings')
import django
django.setup()

from django.test import TestCase
from django.contrib.auth import get_user_model
from django.contrib.sessions.backends.db import SessionStore

from eventcalendar import helper
from calendarapp.models.global_object import GlobalObject
from calendarapp.models.nurse import Nurse
from calendarapp.models.day import Day
from calendarapp.models.shift_type import ShiftType
from calendarapp.models.nurse_day import NurseDay
from calendarapp.models.day_shift_type import DayShiftType

User = get_user_model()

class HelperFunctionTests(TestCase):
    def test_get_current_user_real(self):
        user = User.objects.create_user(
            email="real@example.com",
            username="real",
            unitate_medicala=1,
            password="pass",
        )
        store = SessionStore()
        store['_auth_user_id'] = user.pk
        store.save()
        helper.User = User
        current = helper.get_current_user()
        self.assertEqual(current, user)

class ModelUtilityTests(TestCase):
    def setUp(self):
        self.go = GlobalObject.objects.create(Name="G")
        self.n1 = Nurse.objects.create(
            EmployeeID="N1",
            MaxShifts="5",
            MaxTotalMins=100,
            MinTotalMins=20,
            MaxConsShifts=5,
            MinConsShifts=0,
            MinConsDaysOff=0,
            MaxWeekends=0,
            DaysOff=0,
            GlobalObject=self.go,
        )
        self.n2 = Nurse.objects.create(
            EmployeeID="N2",
            MaxShifts="5",
            MaxTotalMins=80,
            MinTotalMins=10,
            MaxConsShifts=5,
            MinConsShifts=0,
            MinConsDaysOff=0,
            MaxWeekends=0,
            DaysOff=0,
            GlobalObject=self.go,
        )
        self.day = Day.objects.create(DayID="1", GlobalObject=self.go)
        self.shift = ShiftType.objects.create(
            ShiftID="S1",
            LengthInMins=60,
            ForbiddenShifts="[]",
            GlobalObject=self.go,
        )

    def test_global_object_totals_and_scope(self):
        self.n1.TotalMins = 30
        self.n2.TotalMins = 20
        total = self.go.total_minutes()
        self.assertEqual(total, 50)
        self.assertEqual(self.go.total_to_min(), 0)
        self.assertGreater(self.go.total_to_max(), 0)
        self.go.set_isinsideoptscope([self.n1], [self.day], [self.shift])
        self.assertTrue(self.n1.IsInsideOptScope)
        self.assertTrue(self.day.IsInsideOptScope)
        self.assertTrue(self.shift.IsInsideOptScope)
        self.go.reset_isinsideoptscope()
        self.assertFalse(self.n1.IsInsideOptScope)
        self.assertFalse(self.day.IsInsideOptScope)
        self.assertFalse(self.shift.IsInsideOptScope)

    def test_dayshift_type_kpis(self):
        dst = DayShiftType.objects.create(
            Day=self.day,
            ShiftType=self.shift,
            NrRequired=2,
            OverCoverWeight=1,
            UnderCoverWeight=1,
        )
        self.assertEqual(dst.gap_required_vs_actual(), 2)
        self.assertEqual(dst.calc_KPISoftUnderCover(), 2)
        self.assertEqual(dst.calc_KPISoftOverCover(), 0)
