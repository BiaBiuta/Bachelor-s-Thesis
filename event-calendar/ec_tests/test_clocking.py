import os
import sys
from pathlib import Path

sys.path.append(str(Path(__file__).resolve().parents[1]))
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'ec_tests.test_settings')
import django
django.setup()

from django.test import TestCase, RequestFactory
from django.contrib.auth import get_user_model
from django.utils import timezone

from calendarapp.models.global_object import GlobalObject
from calendarapp.models.nurse import Nurse
from calendarapp.models.clock_entry import ClockEntry

User = get_user_model()


class ClockEntryModelTests(TestCase):
    def setUp(self):
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

    def test_duration_hours(self):
        start = timezone.now()
        end = start + timezone.timedelta(hours=3)
        entry = ClockEntry.objects.create(
            nurse=self.nurse,
            department=self.department,
            start_time=start,
            end_time=end,
        )
        self.assertAlmostEqual(entry.duration_hours(), 3.0)


class ClockingViewTests(TestCase):
    def setUp(self):
        self.user = User.objects.create_user(
            email="n1@example.com",
            username="N1",
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

    def test_clock_in_and_out(self):
        factory = RequestFactory()
        request = factory.post("/clock/in/")
        request.user = self.user

        import importlib.util
        spec = importlib.util.spec_from_file_location(
            "views_clocking",
            Path(__file__).resolve().parents[1] / "calendarapp" / "views" / "views_clocking.py",
        )
        views_clocking = importlib.util.module_from_spec(spec)
        spec.loader.exec_module(views_clocking)
        views_clocking.reverse = lambda *a, **k: "/"

        views_clocking.clock_in(request)
        entry = ClockEntry.objects.get()
        self.assertIsNone(entry.end_time)

        request2 = factory.post("/clock/out/")
        request2.user = self.user
        views_clocking.clock_out(request2)
        entry.refresh_from_db()
        self.assertIsNotNone(entry.end_time)

    def test_clock_in_demo_duration(self):
        factory = RequestFactory()
        request = factory.post("/clock/in/", {"demo_duration": "2"})
        request.user = self.user

        import importlib.util
        spec = importlib.util.spec_from_file_location(
            "views_clocking",
            Path(__file__).resolve().parents[1] / "calendarapp" / "views" / "views_clocking.py",
        )
        views_clocking = importlib.util.module_from_spec(spec)
        spec.loader.exec_module(views_clocking)
        views_clocking.reverse = lambda *a, **k: "/"

        views_clocking.clock_in(request)
        entry = ClockEntry.objects.get()
        self.assertIsNotNone(entry.end_time)
        delta = entry.end_time - entry.start_time
        self.assertEqual(delta.total_seconds(), 120)

    def test_clock_entries_scale(self):
        factory = RequestFactory()
        start = timezone.now()
        end = start + timezone.timedelta(minutes=1)
        ClockEntry.objects.create(
            nurse=self.nurse,
            department=self.department,
            start_time=start,
            end_time=end,
        )

        request = factory.get("/clock/entries/?scale=60")
        request.user = self.user

        import importlib.util
        spec = importlib.util.spec_from_file_location(
            "views_clocking",
            Path(__file__).resolve().parents[1] / "calendarapp" / "views" / "views_clocking.py",
        )
        views_clocking = importlib.util.module_from_spec(spec)
        spec.loader.exec_module(views_clocking)

        view = views_clocking.ClockEntryListView()
        view.request = request
        qs = ClockEntry.objects.all()
        view.object_list = qs
        context = view.get_context_data(object_list=qs)

        self.assertAlmostEqual(context["total_hours"], 1.0)
        self.assertAlmostEqual(context["entries"][0].display_hours, 1.0)
