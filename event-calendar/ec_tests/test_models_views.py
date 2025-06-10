import datetime
from django.test import TestCase, RequestFactory
from django.http import HttpResponse
from unittest.mock import patch
from django.contrib.auth import get_user_model
from pathlib import Path
import os
import sys

# Add the parent directory to ``sys.path`` so that ``calendarapp`` and
# ``eventcalendar`` modules can be imported when tests are executed from the
# repository root.
sys.path.append(str(Path(__file__).resolve().parents[1]))
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'ec_tests.test_settings')
import django
django.setup()

from calendarapp.models.global_object import GlobalObject
from calendarapp.models.nurse import Nurse
from calendarapp.models.day import Day
from calendarapp.models.shift_type import ShiftType
from calendarapp.models.nurse_day import NurseDay
from calendarapp.models.nurse_day_shift_type import NurseDayShiftType
from calendarapp.models.event import Event
from calendarapp.models.event_member import EventMember
from calendarapp.models.sanitation_task import SanitationTask
from eventcalendar.views import DashboardView
import importlib.util

spec_ap = importlib.util.spec_from_file_location(
    "approve_event",
    Path(__file__).resolve().parents[1] / "calendarapp" / "views" / "approve_event.py",
)
approve_event_module = importlib.util.module_from_spec(spec_ap)
spec_ap.loader.exec_module(approve_event_module)
approve_event = approve_event_module.approve_event

spec_de = importlib.util.spec_from_file_location(
    "deny_event",
    Path(__file__).resolve().parents[1] / "calendarapp" / "views" / "deny_event.py",
)
deny_event_module = importlib.util.module_from_spec(spec_de)
spec_de.loader.exec_module(deny_event_module)
deny_event = deny_event_module.deny_event
from django.utils import timezone

User = get_user_model()

class BaseEventSetup(TestCase):
    def setUp(self):
        self.user = User.objects.create_user(
            email="base@example.com",
            username="base",
            unitate_medicala=1,
            password="pass",
        )
        self.superuser = User.objects.create_superuser(
            email="admin@example.com",
            username="admin",
            unitate_medicala=1,
            password="pass",
        )
        self.department = GlobalObject.objects.create(Name="Dept")
        self.nurse = Nurse.objects.create(
            EmployeeID="N1",
            MaxShifts="5",
            MaxTotalMins=0,
            MinTotalMins=0,
            MaxConsShifts=0,
            MinConsShifts=0,
            MinConsDaysOff=0,
            MaxWeekends=0,
            DaysOff=0,
            GlobalObject=self.department,
        )
        self.day = Day.objects.create(DayID="1", GlobalObject=self.department)
        self.shift = ShiftType.objects.create(
            ShiftID="S1",
            LengthInMins=60,
            ForbiddenShifts="[]",
            GlobalObject=self.department,
        )
        self.nurseday = NurseDay.objects.create(
            Nurse=self.nurse,
            Day=self.day,
            IsDayOff=False,
        )
        self.ndst = NurseDayShiftType.objects.create(
            Nurse=self.nurse,
            Day=self.day,
            ShiftType=self.shift,
            NurseDay=self.nurseday,
            IsOnRequest=False,
            IsOffRequest=False,
            OnRequestWeight=0,
            OffRequestWeight=0,
        )
        self.event = Event.objects.create(
            NurseDayShiftType=self.ndst,
            user=self.user,
            title="Ev",
            description="d",
            start_time=datetime.datetime(2024,1,1),
            end_time=datetime.datetime(2024,1,1),
            department=self.department,
        )
        self.factory = RequestFactory()

class EventMemberTests(BaseEventSetup):
    def test_str(self):
        member = EventMember.objects.create(event=self.event, user=self.user)
        self.assertEqual(str(member), str(self.user))

class SanitationTaskTests(TestCase):
    def setUp(self):
        self.department = GlobalObject.objects.create(Name="Dept")
        self.n1 = Nurse.objects.create(
            EmployeeID="N1",
            MaxShifts="5",
            MaxTotalMins=0,
            MinTotalMins=0,
            MaxConsShifts=0,
            MinConsShifts=0,
            MinConsDaysOff=0,
            MaxWeekends=0,
            DaysOff=0,
            GlobalObject=self.department,
        )
        self.n2 = Nurse.objects.create(
            EmployeeID="N2",
            MaxShifts="5",
            MaxTotalMins=0,
            MinTotalMins=0,
            MaxConsShifts=0,
            MinConsShifts=0,
            MinConsDaysOff=0,
            MaxWeekends=0,
            DaysOff=0,
            GlobalObject=self.department,
        )

    def test_least_loaded_nurse(self):
        start = timezone.now()
        SanitationTask.objects.create(
            title="T1",
            location="L1",
            start_time=start,
            end_time=start + timezone.timedelta(hours=1),
            nurse=self.n1,
            department=self.department,
        )
        least = SanitationTask.least_loaded_nurse(self.department, start.date())
        self.assertEqual(least, self.n2)

    def test_save_auto_assign(self):
        start = timezone.now()
        task = SanitationTask(
            title="Auto",
            location="L",
            start_time=start,
            end_time=start + timezone.timedelta(hours=1),
            department=self.department,
        )
        task.save()
        self.assertIsNotNone(task.nurse)

class DashboardViewTests(BaseEventSetup):
    def test_context_counts(self):
        request = self.factory.get("/")
        request.user = self.user
        captured = {}
        def fake_render(req, tpl, ctx):
            captured["ctx"] = ctx
            return HttpResponse("ok")
        with patch("eventcalendar.views.render", fake_render):
            response = DashboardView.as_view()(request)
        self.assertEqual(response.status_code, 200)
        self.assertEqual(captured["ctx"]["total_event"], 1)

class ApproveDenyTests(BaseEventSetup):
    def test_approve_event(self):
        request = self.factory.post("/")
        request.user = self.superuser
        with patch.object(approve_event_module, "redirect", lambda *a, **k: HttpResponse()):
            approve_event(request, self.event.id)
        self.event.refresh_from_db()
        self.assertTrue(self.event.is_approved)

    def test_deny_event(self):
        request = self.factory.post("/")
        request.user = self.superuser
        with patch.object(deny_event_module, "redirect", lambda *a, **k: HttpResponse()):
            deny_event(request, self.event.id)
        self.assertFalse(Event.objects.filter(pk=self.event.pk).exists())
