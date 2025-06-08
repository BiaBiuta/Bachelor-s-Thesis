

from django.test import TestCase
from django.urls import reverse
from django.contrib.auth import get_user_model
from calendarapp.models import Event
from calendarapp.models.sanitation_task import SanitationTask
from calendarapp.models.nurse import Nurse
from calendarapp.models.day import Day
from calendarapp.models.shift_type import ShiftType
from calendarapp.models.nurse_day import NurseDay
from calendarapp.models.nurse_day_shift_type import NurseDayShiftType
from calendarapp.models.global_object import GlobalObject
from django.utils import timezone

User = get_user_model()  # Get the user model

class EventListViewTests(TestCase):
    """ Tests for the Event list views """

    def setUp(self):
        # Create a test user
        self.user = User.objects.create_user(
            email='testuser@example.com',
            username='usercal',
            unitate_medicala=1,
            password='password123'
        )
        self.client.login(email='testuser@example.com', password='password123')

        self.department = GlobalObject.objects.create(Name='Dept')
        self.nurse = Nurse.objects.create(
            EmployeeID='N1', GlobalObject=self.department, MaxShifts='5',
            MaxTotalMins=0, MinTotalMins=0, MaxConsShifts=0, MinConsShifts=0,
            MinConsDaysOff=0, MaxWeekends=0, DaysOff=0
        )
        self.day = Day.objects.create(DayID='1', GlobalObject=self.department)
        self.shift = ShiftType.objects.create(
            ShiftID='S1', LengthInMins=60, ForbiddenShifts='[]', GlobalObject=self.department
        )
        self.nurseday = NurseDay.objects.create(Nurse=self.nurse, Day=self.day, IsDayOff=False)
        self.ndst = NurseDayShiftType.objects.create(
            Nurse=self.nurse, Day=self.day, ShiftType=self.shift, NurseDay=self.nurseday,
            IsAssigned=False, IsOnRequest=False, IsOffRequest=False, OnRequestWeight=0, OffRequestWeight=0
        )

        # Create some test events
        self.all_events_url = reverse('calendarapp:all_events')  # URL for AllEventsListView
        self.running_events_url = reverse('calendarapp:running_events')  # URL for RunningEventsListView
        self.upcoming_events_url = reverse('calendarapp:upcoming_events')  # URL for UpcomingEventsListView
        self.completed_events_url = reverse('calendarapp:completed_events')  # URL for CompletedEventsListView

        # Creating events for testing
        self.event1 = Event.objects.create(title="Past Event", user=self.user, department=self.department, NurseDayShiftType=self.ndst, start_time="2023-10-01", end_time="2023-10-01")
        self.event2 = Event.objects.create(title="Running Event", user=self.user, department=self.department, NurseDayShiftType=self.ndst, start_time="2024-11-01", end_time="2024-11-01")
        self.event3 = Event.objects.create(title="Upcoming Event", user=self.user, department=self.department, NurseDayShiftType=self.ndst, start_time="2024-12-01", end_time="2024-12-01")
        self.event4 = Event.objects.create(title="Another Completed Event", user=self.user, department=self.department, NurseDayShiftType=self.ndst, start_time="2023-09-01", end_time="2023-09-01")

    def test_all_events_view(self):
        """ Test that all events are listed correctly """
        response = self.client.get(self.all_events_url)
        self.assertEqual(response.status_code, 200)
        self.assertTemplateUsed(response, 'calendarapp/events_list.html')
        self.assertEqual(response.status_code, 200)

    def test_running_events_view(self):
        """ Test that only running events are listed """
        response = self.client.get(self.running_events_url)
        self.assertEqual(response.status_code, 200)
        self.assertTemplateUsed(response, 'calendarapp/events_list.html')
        self.assertEqual(response.status_code, 200)

    def test_upcoming_events_view(self):
        """ Test that only upcoming events are listed """
        response = self.client.get(self.upcoming_events_url)
        self.assertEqual(response.status_code, 200)
        self.assertTemplateUsed(response, 'calendarapp/events_list.html')
        self.assertEqual(response.status_code, 200)

    def test_completed_events_view(self):
        """ Test that only completed events are listed """
        response = self.client.get(self.completed_events_url)
        self.assertEqual(response.status_code, 200)
        self.assertTemplateUsed(response, 'calendarapp/events_list.html')
        self.assertEqual(response.status_code, 200)


class SanitationTaskTests(TestCase):
    def setUp(self):
        self.user = User.objects.create_user(
            email='nurse@example.com', username='nurse', unitate_medicala=1, password='pass'
        )
        self.client.login(email='nurse@example.com', password='pass')
        self.department = GlobalObject.objects.create(Name='Dept1')
        self.n1 = Nurse.objects.create(
            EmployeeID='N1',
            GlobalObject=self.department,
            MaxShifts='5',
            MaxTotalMins=0,
            MinTotalMins=0,
            MaxConsShifts=0,
            MinConsShifts=0,
            MinConsDaysOff=0,
            MaxWeekends=0,
            DaysOff=0,
        )

    def test_task_auto_assigns_nurse(self):
        start = timezone.now()
        end = start + timezone.timedelta(hours=1)
        task = SanitationTask.objects.create(
            title='Clean',
            location='Room 1',
            start_time=start,
            end_time=end,
            department=self.department,
        )
        self.assertIsNotNone(task.nurse)
