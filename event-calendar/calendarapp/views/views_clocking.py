from datetime import datetime, timedelta

from django.contrib.auth.decorators import login_required
from django.contrib.auth.mixins import LoginRequiredMixin
from django.shortcuts import get_object_or_404, redirect, render
from django.urls import reverse
from django.utils import timezone
from django.views.generic import ListView

from calendarapp.models.nurse import Nurse
from calendarapp.models.clock_entry import ClockEntry


class ClockEntryListView(LoginRequiredMixin, ListView):
    template_name = "calendarapp/clock_entries.html"
    context_object_name = "entries"

    def get_queryset(self):
        nurse = Nurse.objects.filter(EmployeeID=self.request.user.username).first()
        qs = ClockEntry.objects.none()
        if nurse:
            qs = ClockEntry.objects.filter(nurse=nurse)
        month = self.request.GET.get("month")
        week = self.request.GET.get("week")
        if month and qs.exists():
            year, m = (int(x) for x in month.split("-"))
            start = datetime(year, m, 1)
            if m == 12:
                end = datetime(year + 1, 1, 1)
            else:
                end = datetime(year, m + 1, 1)
            qs = qs.filter(start_time__gte=start, start_time__lt=end)
        elif week and qs.exists():
            y, w = week.split("-W")
            start = datetime.fromisocalendar(int(y), int(w), 1)
            end = start + timedelta(days=7)
            qs = qs.filter(start_time__gte=start, start_time__lt=end)
        return qs

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        total = sum(e.duration_hours() for e in context["entries"])
        context["total_hours"] = total
        return context


@login_required
def clock_in(request):
    nurse = get_object_or_404(Nurse, EmployeeID=request.user.username)
    open_entry = ClockEntry.objects.filter(nurse=nurse, end_time__isnull=True).first()
    if not open_entry:
        entry = ClockEntry.objects.create(nurse=nurse, department=nurse.GlobalObject)
        duration = request.POST.get("demo_duration") or request.GET.get("demo_duration")
        if duration:
            try:
                minutes = int(duration)
                entry.end_time = entry.start_time + timezone.timedelta(minutes=minutes)
                entry.save()
            except ValueError:
                pass
    return redirect(reverse("calendarapp:clock_entries"))


@login_required
def clock_out(request):
    nurse = get_object_or_404(Nurse, EmployeeID=request.user.username)
    entry = ClockEntry.objects.filter(nurse=nurse, end_time__isnull=True).first()
    if entry:
        entry.end_time = timezone.now()
        entry.save()
    return redirect(reverse("calendarapp:clock_entries"))
