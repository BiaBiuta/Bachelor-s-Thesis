
import logging
import re

from django.contrib import messages
from django.shortcuts import render, redirect
from django.http import HttpResponseRedirect
from django.views import generic
from django.utils.safestring import mark_safe
from datetime import timedelta, datetime, date
import calendar
from django.contrib.auth.decorators import login_required
from django.contrib.auth.mixins import LoginRequiredMixin
from django.urls import reverse_lazy, reverse
from django.http import JsonResponse
from django.shortcuts import get_object_or_404
from accounts.models.user import User
from calendarapp.models import EventMember, Event
from calendarapp.utils import Calendar
from calendarapp.forms import EventForm, AddMemberForm,ShiftRequestForm
from calendarapp.consumers import CHANNEL_MAP
from calendarapp.views.context_processors import current_nurse_global_object
from calendarapp.models.nurse import Nurse
from calendarapp.models.day_shift_type import DayShiftType
from calendarapp.models.day import Day
from calendarapp.models.shift_type import ShiftType
from calendarapp.models.cereri.shift_request import ShiftRequest
from calendarapp.models.global_object import GlobalObject
from collections import defaultdict
from datetime import timedelta
from channels.layers import get_channel_layer
from asgiref.sync import async_to_sync
from django.views.decorators.http import require_GET
from django.views.decorators.csrf import csrf_exempt
import json


def get_date(req_day):
    if req_day:
        year, month = (int(x) for x in req_day.split("-"))
        return date(year, month, day=1)
    return datetime.today()


def prev_month(d):
    first = d.replace(day=1)
    prev_month = first - timedelta(days=1)
    month = "month=" + str(prev_month.year) + "-" + str(prev_month.month)
    return month


def next_month(d):
    days_in_month = calendar.monthrange(d.year, d.month)[1]
    last = d.replace(day=days_in_month)
    next_month = last + timedelta(days=1)
    month = "month=" + str(next_month.year) + "-" + str(next_month.month)
    return month


class CalendarView(LoginRequiredMixin, generic.ListView):
    login_url = "accounts:signin"
    model = Event
    template_name = "calendar.html"

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        d = get_date(self.request.GET.get("month", None))
        cal = Calendar(d.year, d.month)
        html_cal = cal.formatmonth(withyear=True)
        context["calendar"] = mark_safe(html_cal)
        context["prev_month"] = prev_month(d)
        context["next_month"] = next_month(d)
        return context


from asgiref.sync import async_to_sync
from channels.layers import get_channel_layer

@login_required(login_url="signup")
def create_event(request):
    form = EventForm(request.POST or None)
    if request.POST and form.is_valid():
        title = form.cleaned_data["title"]
        description = form.cleaned_data["description"]
        start_time = form.cleaned_data["start_time"]
        end_time = form.cleaned_data["end_time"]
        event, created = Event.objects.get_or_create(
            user=request.user,
            title=title,
            description=description,
            start_time=start_time,
            end_time=end_time,
        )
        print("Event creat:", event, flush=True)

      #notific
        channel_layer = get_channel_layer()
        async_to_sync(channel_layer.group_send)(
            'notificare_grup',
            {
                'type': 'notificare_message',
                'message': f"Eveniment creat: {event.title}",
                'sender': request.session.get('username', 'Sistem')
            }
        )
        return HttpResponseRedirect(reverse("calendarapp:calendar"))
    return render(request, "event.html", {"form": form})



@login_required
def add_shift_request(request):
    print("add_shift_request")
    if request.method == 'POST':
        print(">>> request.POST:", request.POST)
        form = ShiftRequestForm(request.POST)
        print(">> [DEBUG] Render HTML al formularului (as_p):")
        print(form.as_p())
        departament = request.POST['department']

        if form.is_valid():
            shift_req = form.save(commit=False)
            valoare_nurse = request.POST['nurse']
            nurse=Nurse.objects.get(EmployeeID=valoare_nurse)
            shift_req.nurse = nurse
            shift_req.status = 'P'
            shift_req.save()
            messages.success(request, "Cererea de shift a fost creată cu succes.")
            return redirect('calendarapp:calendar',int(departament))
        else:
            print("Formular invalid:", form.errors)
            messages.error(request, "Date invalide. Vă rugăm verificați câmpurile.")
            return redirect('calendarapp:calendar',global_object_id=int(request.POST.get('department', 0)))
    else:
        return redirect('calendarapp:calendar',global_object_id=int(request.POST.get('department', 0)))



class EventEdit(generic.UpdateView):
    model = Event
    fields = ["title", "description", "start_time", "end_time"]
    template_name = "event.html"


@login_required(login_url="signup")
def event_details(request, event_id):
    event = Event.objects.get(id=event_id)
    eventmember = EventMember.objects.filter(event=event)
    context = {"event": event, "eventmember": eventmember}
    return render(request, "event-details.html", context)

@require_GET
def api_shift_types_with_deficit(request):
    """
    Endpoint care primeste doi parametri prin GET:
      - department_id  (int)
      - day_id         (int sau string convertibil la int)

    returneaza, în JSON, lista de ShiftType (id + nume) care au deficit
    > 0 în ziua si departamentul date.
    """

    dept = request.GET.get('department_id')
    day_pk = request.GET.get('day_id')
    print("day_pk",day_pk)
    day_pk=day_pk.split(" ")[0]
    day_pk=int(day_pk.split("-")[2])

    num = re.search(r'\d+', GlobalObject.objects.get(id=int(dept)).Name).group()
    day_pk=int(num+str(day_pk))
    try:
        dept_id = int(dept)
        day_id = int(day_pk)
        print("day din request")
        print(dept_id, day_id)
    except (TypeError, ValueError):
        return JsonResponse({'error': 'Parametrii lipsesc sau nu sunt întregi.'}, status=400)
    try:
        day_obj = Day.objects.get(pk=day_id, GlobalObject_id=dept_id)
    except Day.DoesNotExist:
        return JsonResponse({'shift_types': []})
    dst_qs = DayShiftType.objects.filter(Day=day_obj)
    shift_ids = []
    for dst in dst_qs:
        try:
            gap = dst.gap_required_vs_actual()
        except Exception:
            gap = 0
        if gap > 0:
            shift_ids.append(dst.ShiftType_id)
    shift_qs = ShiftType.objects.filter(ShiftID__in=shift_ids, GlobalObject_id=dept_id)
    data = [
        {
            'id': st.pk,
            'name': st.pk,
        }
        for st in shift_qs
    ]

    return JsonResponse({'shift_types': data})
def add_eventmember(request, event_id):
    forms = AddMemberForm()
    if request.method == "POST":
        forms = AddMemberForm(request.POST)
        if forms.is_valid():
            member = EventMember.objects.filter(event=event_id)
            event = Event.objects.get(id=event_id)
            if member.count() <= 9:
                user = forms.cleaned_data["user"]
                EventMember.objects.create(event=event, user=user)
                return redirect("calendarapp:calendar")
            else:
                print("--------------User limit exceed!-----------------")
    context = {"form": forms}

    return render(request, "add_member.html", context)


class EventMemberDeleteView(generic.DeleteView):
    model = EventMember
    template_name = "event_delete.html"
    success_url = reverse_lazy("calendarapp:calendar")



class CalendarViewNew(LoginRequiredMixin, generic.View):
    login_url = "accounts:signin"
    template_name = "calendarapp/calendar.html"
    form_class = EventForm

    def get(self, request, *args, **kwargs):
        event_form = self.form_class()
        domain_pk = kwargs.get('global_object_id', 0)
        shift_request_form = ShiftRequestForm(department_id=domain_pk)
        if domain_pk == 0:
            events_qs = Event.objects.filter(is_active=True, is_deleted=False)
        else:
            events_qs = Event.objects.filter(is_active=True, is_deleted=False, department_id=domain_pk)

        events_month = Event.objects.get_running_events(user=request.user)
        event_list = []
        email = request.user.email
        emp_id = email.split('@', 1)[0]
        try:
            nurse = Nurse.objects.get(EmployeeID=emp_id)
            user_dep_id = nurse.GlobalObject_id
        except Nurse.DoesNotExist:
            user_dep_id = domain_pk

        for ev in events_qs:
            event_list.append({
                "title": ev.title,
                "start": ev.start_time.strftime("%Y-%m-%dT%H:%M:%S"),
                "end":   ev.end_time.strftime("%Y-%m-%dT%H:%M:%S"),
                "description": ev.description,
                "color": "blue" if ev.department_id == user_dep_id else "lightgray",

            })
        deficits_by_day = defaultdict(int)
        for day in Day.objects.filter(GlobalObject=domain_pk):
            for shift in ShiftType.objects.filter(GlobalObject=domain_pk):
                try:
                    dst = DayShiftType.objects.get(Day_id=day.DayID, ShiftType_id=shift.ShiftID)
                    gap = dst.gap_required_vs_actual()
                    if gap > 0:
                        # aici convertesc str(day.DayID)[1:] la numar de zile offset
                        deficits_by_day[int(str(day.DayID)[1:])] += gap
                except DayShiftType.DoesNotExist:
                    continue
        base_date = datetime(2025, 5, 1)
        deficit_dates = [
            (base_date + timedelta(days=offset)).strftime("%Y-%m-%d")
            for offset in deficits_by_day.keys()
        ]
        context = {
            "form": event_form,
            "form_request": shift_request_form,
            "events_month": events_month,
            "events": event_list,
            "deficit_dates": deficit_dates,
            "domain_pk": domain_pk,
            "nurse":emp_id
        }
        return render(request, self.template_name, context)

    def post(self, request, *args, **kwargs):
        logger = logging.getLogger(__name__)
        domain_pk = kwargs.get('global_object_id', 0)
        shift_request_form = ShiftRequestForm(request.POST, department_id=domain_pk)
        event_form = self.form_class(request.POST)
        if event_form.is_valid():
            ev = event_form.save(commit=False)
            ev.user = request.user
            ev.department_id = domain_pk
            ev.save()
            logger.info(f"Eveniment salvat, id={ev.id}, title={ev.title}")
            return redirect("calendarapp:calendar", domain_pk)
        shift_request_form = ShiftRequestForm()
        if domain_pk == 0:
            events_qs = Event.objects.filter(is_active=True, is_deleted=False)
        else:
            events_qs = Event.objects.filter(is_active=True, is_deleted=False, department_id=domain_pk)
        events_month = Event.objects.get_running_events(user=request.user)
        event_list = []
        try:
            nurse = Nurse.objects.get(EmployeeID=request.user.email.split('@',1)[0])
            user_dep_id = nurse.GlobalObject_id
        except Nurse.DoesNotExist:
            user_dep_id = domain_pk
        for ev in events_qs:
            event_list.append({
                "title": ev.title,
                "start": ev.start_time.strftime("%Y-%m-%dT%H:%M:%S"),
                "end":   ev.end_time.strftime("%Y-%m-%dT%H:%M:%S"),
                "description": ev.description,
                "color": "blue" if ev.department_id == user_dep_id else "lightgray",
            })
        deficits_by_day = defaultdict(int)
        for day in Day.objects.filter(GlobalObject=domain_pk):
            for shift in ShiftType.objects.filter(GlobalObject=domain_pk):
                try:
                    dst = DayShiftType.objects.get(Day_id=day.DayID, ShiftType_id=shift.ShiftID)
                    gap = dst.gap_required_vs_actual()
                    if gap > 0:
                        deficits_by_day[int(str(day.DayID)[1:])] += gap
                except DayShiftType.DoesNotExist:
                    continue
        base_date = datetime(2025, 5, 1)
        deficit_dates = [
            (base_date + timedelta(days=offset)).strftime("%Y-%m-%d")
            for offset in deficits_by_day.keys()
        ]

        context = {
            "form": event_form,
            "form_request": shift_request_form,
            "events_month": events_month,
            "events": event_list,
            "deficit_dates": deficit_dates,
            "domain_pk": domain_pk,
            "nurse": request.user.email.split('@',1)[0]
        }
        return render(request, self.template_name, context)

def delete_event(request, event_id):
    event = get_object_or_404(Event, id=event_id)
    if request.method == 'POST':
        event.delete()

        return JsonResponse({'message': 'Event sucess delete.'})
    else:
        return JsonResponse({'message': 'Error!'}, status=400)

def next_week(request, event_id):
    event = get_object_or_404(Event, id=event_id)
    if request.method == 'POST':
        next = event
        next.id = None
        next.start_time += timedelta(days=7)
        next.end_time += timedelta(days=7)
        next.save()
        return JsonResponse({'message': 'Sucess!'})
    else:
        return JsonResponse({'message': 'Error!'}, status=400)

def next_day(request, event_id):

    event = get_object_or_404(Event, id=event_id)
    if request.method == 'POST':
        next = event
        next.id = None
        next.start_time += timedelta(days=1)
        next.end_time += timedelta(days=1)
        next.save()
        return JsonResponse({'message': 'Sucess!'})
    else:
        return JsonResponse({'message': 'Error!'}, status=400)


@csrf_exempt
def schedule_view(request):
    """API endpoint pentru crearea unui ShiftRequest"""
    if request.method != "POST":
        return JsonResponse({"error": "Only POST allowed"}, status=405)

    try:
        data = json.loads(request.body or "{}")
        employee = data.get("nurse")
        date = data.get("day")
        shift_type = data.get("shift_type")
        req_type = data.get("req_type")
        weight = data.get("weight")
        department = data.get("department")
        user=User.objects.get(pk=int(employee))
        nurse = Nurse.objects.get(EmployeeID=user.username)
        global_object = GlobalObject.objects.get(id=nurse.GlobalObject_id)
    except json.JSONDecodeError:
        return JsonResponse({"error": "Invalid JSON"}, status=400)

    required = ["day", "shift_type", "req_type", "weight", "nurse", "department"]
    if not all(k in data for k in required):
        return JsonResponse({"success": False, "message": "Missing fields"}, status=400)

    try:
        dt = datetime.fromisoformat(data["day"].replace("Z", "+00:00"))
        num= re.search(r'\d+', global_object.Name).group()
        day_pk = int(num+str(int((date.split("-")[2]).split("T")[0])))
        day_obj = Day.objects.get(pk=day_pk)

        shift = ShiftType.objects.get(ShiftID="D1")
        # nurse = Nurse.objects.get(EmployeeID=data["nurse"])
        dept = global_object

        ShiftRequest.objects.create(
            nurse=nurse,
            department=dept,
            day=day_obj,
            shift_type=shift,
            req_type=data["req_type"],
            weight=float(data["weight"]),
            status="P",
        )
    except Exception as e:
        logging.exception("schedule_view error")
        return JsonResponse({"success": False, "message": "Eroare la salvare."}, status=400)

    return JsonResponse({"success": True, "message": "Cererea a fost înregistrată."})


@login_required
def user_profile(request, user_id):
    """Returneaza informatii despre un utilizator în format JSON"""
    user = get_object_or_404(User, pk=user_id)
    data = {
        "name": user.get_full_name() or user.email,
        "email": user.email,
        "date_joined": user.date_joined.strftime("%Y-%m-%d"),
    }
    return JsonResponse(data)

class UserProfilePageView(LoginRequiredMixin, generic.TemplateView):
    template_name = 'calendarapp/profile_page.html'

    def get_context_data(self, **kwargs):
        ctx = super().get_context_data(**kwargs)
        user = self.request.user
        ctx['user_obj'] = user
        emp_id = user.email.split('@')[0]
        try:
            nurse = Nurse.objects.get(EmployeeID=emp_id)
        except Nurse.DoesNotExist:
            nurse = None
        ctx['nurse'] = nurse
        return ctx

