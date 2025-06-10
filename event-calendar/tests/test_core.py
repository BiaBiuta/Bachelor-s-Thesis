import datetime
import os
import importlib.util
from pathlib import Path

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'tests.test_settings')
from django.test import TestCase, RequestFactory
from django.contrib.auth import get_user_model
from django.contrib.sessions.middleware import SessionMiddleware
from django.utils import timezone

from event-calendar.eventcalendar.helper import get_current_user
from event-calendar.calendarapp.utils import Calendar

spec = importlib.util.spec_from_file_location(
    "load_utils",
    Path(__file__).resolve().parents[1] / "calendarapp" / "views" / "utils.py",
)
utils = importlib.util.module_from_spec(spec)
spec.loader.exec_module(utils)
load_global_object = utils.load_global_object
from calendarapp.models.global_object import GlobalObject
from calendarapp.models.nurse import Nurse
from calendarapp.models.day import Day
from calendarapp.models.shift_type import ShiftType
from calendarapp.models.nurse_day import NurseDay
from calendarapp.models.nurse_day_shift_type import NurseDayShiftType
from calendarapp.models.day_shift_type import DayShiftType as DayShiftTypeModel
from calendarapp.models.event import Event

import types, sys
sys.modules.setdefault('joblib', types.SimpleNamespace(load=lambda *a, **k: None))
sys.modules.setdefault('spacy', types.SimpleNamespace(load=lambda *a, **k: types.SimpleNamespace(__call__=lambda x: [])))
class _FakeFastAPI:
    def __init__(self, *a, **k):
        pass
    def add_middleware(self, *a, **k):
        pass
    def post(self, *a, **k):
        def decorator(func):
            return func
        return decorator
sys.modules.setdefault('fastapi', types.SimpleNamespace(FastAPI=_FakeFastAPI, middleware=types.SimpleNamespace(cors=types.SimpleNamespace(CORSMiddleware=object))))
sys.modules.setdefault('fastapi.middleware.cors', types.SimpleNamespace(CORSMiddleware=object))
sys.modules.setdefault('dateparser', types.SimpleNamespace(search=lambda *a, **k: []))
sys.modules.setdefault('dateparser.search', types.SimpleNamespace(search_dates=lambda *a, **k: []))
sys.modules.setdefault('pydantic', types.SimpleNamespace(BaseModel=object))
from intent_api.main import get_weekday_date, contains_explicit_date_word, extract_scheduling_info

User = get_user_model()

class HelperTests(TestCase):
    def setUp(self):
        self.user = User.objects.create_user(
            email="tester@example.com",
            username="tester",
            unitate_medicala=1,
            password="pass"
        )
        self.factory = RequestFactory()

    def _login(self):
        request = self.factory.get("/")
        middleware = SessionMiddleware(lambda req: None)
        middleware.process_request(request)
        request.session.save()
        request.user = self.user
        # attach session to backend login
        self.client.login(email="tester@example.com", password="pass")
        return request

    def test_get_current_user(self):
        self._login()
        import eventcalendar.helper as helper
        helper.User = User
        helper.get_current_user = lambda: self.user
        user = helper.get_current_user()
        self.assertEqual(user, self.user)

class CalendarUtilsTests(TestCase):
    def setUp(self):
        self.user = User.objects.create_user(
            email="cal@example.com",
            username="cal",
            unitate_medicala=1,
            password="pass"
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
        Event.objects.create(
            NurseDayShiftType=self.ndst,
            user=self.user,
            title="Test",
            description="d",
            start_time=datetime.datetime(2024,1,1),
            end_time=datetime.datetime(2024,1,1),
            department=self.department,
        )

    def test_formatday(self):
        cal = Calendar(2024,1)
        html = cal.formatday(1, Event.objects.all())
        self.assertIn("Test", html)

    def test_formatweek_and_month(self):
        cal = Calendar(2024,1)
        week = cal.monthdays2calendar(2024,1)[0]
        html_week = cal.formatweek(week, Event.objects.all())
        self.assertIn("<tr>", html_week)
        html_month = cal.formatmonth()
        self.assertIn("<table", html_month)

class UtilsTests(TestCase):
    def test_load_global_object(self):
        go = GlobalObject.objects.create(Name="LoadGO")
        loaded = load_global_object(go.id)
        self.assertEqual(loaded.id, go.id)
        self.assertEqual(loaded.Nurse, [])

class DayShiftTypeTests(TestCase):
    def test_gap_and_kpi(self):
        go = GlobalObject.objects.create(Name="Dept")
        nurse = Nurse.objects.create(
            EmployeeID="N2",
            MaxShifts="5",
            MaxTotalMins=0,
            MinTotalMins=0,
            MaxConsShifts=0,
            MinConsShifts=0,
            MinConsDaysOff=0,
            MaxWeekends=0,
            DaysOff=0,
            GlobalObject=go,
        )
        day = Day.objects.create(DayID="1", GlobalObject=go)
        shift = ShiftType.objects.create(
            ShiftID="S2",
            LengthInMins=60,
            ForbiddenShifts="[]",
            GlobalObject=go,
        )
        nurseday = NurseDay.objects.create(Nurse=nurse, Day=day, IsDayOff=False)
        ndst = NurseDayShiftType.objects.create(
            Nurse=nurse,
            Day=day,
            ShiftType=shift,
            NurseDay=nurseday,
            IsOnRequest=False,
            IsOffRequest=False,
            OnRequestWeight=0,
            OffRequestWeight=0,
        )
        dst = DayShiftTypeModel.objects.create(
            Day=day,
            ShiftType=shift,
            NrRequired=1,
            OverCoverWeight=1,
            UnderCoverWeight=1,
        )
        # no coverage initially
        self.assertEqual(dst.gap_required_vs_actual(), 1)
        nurseday.assign_shift(shift)
        dst.calc_NrCovered()
        self.assertEqual(dst.NrCovered, 1)
        self.assertEqual(dst.calc_KPISoftUnderCover(), 0)
        self.assertEqual(dst.calc_KPISoftOverCover(), 0)

class IntentApiTests(TestCase):
    def test_get_weekday_date(self):
        base = datetime.datetime(2024, 1, 1)  # Monday
        result = get_weekday_date(base, "friday", "this")
        self.assertEqual(result, base + datetime.timedelta(days=4))

    def test_contains_explicit_date_word(self):
        self.assertTrue(contains_explicit_date_word("See you Monday"))
        self.assertFalse(contains_explicit_date_word("hello"))

    def test_extract_scheduling_info(self):
        info = extract_scheduling_info("shift on monday morning weight:2")
        self.assertEqual(info["reqType"], "ON")
        self.assertEqual(info["shiftType"], "provided")

class UserManagerTests(TestCase):
    def test_create_user_variants(self):
        manager = User.objects
        u = manager.create_user("u@example.com", "user1", 1, "pwd")
        self.assertFalse(u.is_staff)
        self.assertFalse(u.is_superuser)
        staff = manager.create_staffuser("s@example.com", "staff", 1, "pwd")
        self.assertTrue(staff.is_staff)
        self.assertFalse(staff.is_superuser)
        admin = manager.create_superuser("a@example.com", "admin", 1, "pwd")
        self.assertTrue(admin.is_superuser)

class EventModelTests(TestCase):
    def setUp(self):
        self.user = User.objects.create_user(
            email="eventer@example.com",
            username="eventer",
            unitate_medicala=1,
            password="pass",
        )
        self.go = GlobalObject.objects.create(Name="Dept")
        shift = ShiftType.objects.create(
            ShiftID="ES",
            LengthInMins=30,
            ForbiddenShifts="[]",
            GlobalObject=self.go,
        )
        day = Day.objects.create(DayID="2", GlobalObject=self.go)
        nday = NurseDay.objects.create(Nurse=Nurse.objects.create(
            EmployeeID="E1",
            MaxShifts="5",
            MaxTotalMins=0,
            MinTotalMins=0,
            MaxConsShifts=0,
            MinConsShifts=0,
            MinConsDaysOff=0,
            MaxWeekends=0,
            DaysOff=0,
            GlobalObject=self.go,
        ), Day=day, IsDayOff=False)
        ndst = NurseDayShiftType.objects.create(
            Nurse=nday.Nurse,
            Day=day,
            ShiftType=shift,
            NurseDay=nday,
            IsOnRequest=False,
            IsOffRequest=False,
            OnRequestWeight=0,
            OffRequestWeight=0,
        )
        self.event = Event.objects.create(
            NurseDayShiftType=ndst,
            user=self.user,
            title="EvTest",
            description="d",
            start_time=datetime.datetime(2024,1,2),
            end_time=datetime.datetime(2024,1,2),
            department=self.go,
        )

    def test_str_and_urls(self):
        self.assertEqual(str(self.event), "EvTest")
        self.assertIn("/", self.event.get_absolute_url())
        self.assertIn("EvTest", self.event.get_html_url)

    def test_manager_filters(self):
        self.assertEqual(Event.objects.get_all_events(self.user).count(), 1)
        self.assertEqual(Event.objects.get_running_events(self.user).count(), 1)

