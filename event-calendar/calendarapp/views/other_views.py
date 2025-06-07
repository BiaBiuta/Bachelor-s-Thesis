# cal/views_chat.py
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

# class CalendarView(LoginRequiredMixin, generic.ListView):
#     login_url = "accounts:signin"
#     model = Event
#     template_name = "calendar.html"
#
#     def get_context_data(self, **kwargs):
#         context = super().get_context_data(**kwargs)
#         d = get_date(self.request.GET.get("month", None))
#         cal = Calendar(d.year, d.month)
#         html_cal = cal.formatmonth(withyear=True)
#         context["calendar"] = mark_safe(html_cal)
#         context["prev_month"] = prev_month(d)
#         context["next_month"] = next_month(d)
#         return context
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

        # Obține channel_layer și canalul asociat utilizatorului
        # channel_layer = get_channel_layer()
        # channel_name = CHANNEL_MAP.get(request.user.id)
        # if channel_name:
        #     print(f"Sending notification to channel {channel_name} for user {request.user.id}")
        #     async_to_sync(channel_layer.send)(channel_name, {
        #         'type': 'notify',  # Aceasta apelează metoda "notify" din consumer
        #         'message': f"New event created: {event.title}",
        #     })
        # else:
        #     print(f"No channel found for user {request.user.id}. Notification not sent.")
        channel_layer = get_channel_layer()
        async_to_sync(channel_layer.group_send)(
            'notificare_grup',  # grupul definit în consumer
            {
                'type': 'notificare_message',  # apelează async def notificare_message
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
        # Listează tot ce vine în request.POST
        print(">>> request.POST:", request.POST)
        form = ShiftRequestForm(request.POST)
        print(">> [DEBUG] Render HTML al formularului (as_p):")
        print(form.as_p())
        departament = request.POST['department']

        if form.is_valid():
            shift_req = form.save(commit=False)
            valoare_nurse = request.POST['nurse']

            # Să setăm nurse din utilizatorul curent, dacă nu l-am afișat în formular:
            nurse=Nurse.objects.get(EmployeeID=valoare_nurse)
            shift_req.nurse = nurse # presupunând că aveți un OneToOne User→Nurse
            # Dacă doriți să blocați modificarea department/zi doar din formular, faceți-le hidden în formular.
            shift_req.status = 'P'  # Pending
            shift_req.save()
            messages.success(request, "Cererea de shift a fost creată cu succes.")
            return redirect('calendarapp:calendar',int(departament))  # înlocuiți cu numele view-ului vostru
        else:
            print("Formular invalid:", form.errors)
            messages.error(request, "Date invalide. Vă rugăm verificați câmpurile.")
            # Puteți retrimite forma cu erori în context, ca să apară validările
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
    Endpoint care primește doi parametri prin GET:
      - department_id  (int)
      - day_id         (int sau string convertibil la int)

    Returnează, în JSON, lista de ShiftType (id + nume) care au deficit
    > 0 în ziua și departamentul date.
    """
    # 1) Extragem parametrii
    dept = request.GET.get('department_id')
    day_pk = request.GET.get('day_id')
    print("day_pk",day_pk)
    day_pk=day_pk.split(" ")[0]
    day_pk=int(day_pk.split("-")[2])

    num = re.search(r'\d+', GlobalObject.objects.get(id=int(dept)).Name).group()
    day_pk=int(num+str(day_pk))
    # Validăm că există ambii parametri
    try:
        dept_id = int(dept)
        day_id = int(day_pk)
        print("day din request")
        print(dept_id, day_id)
    except (TypeError, ValueError):
        return JsonResponse({'error': 'Parametrii lipsesc sau nu sunt întregi.'}, status=400)

    # 2) Verificăm că ziua există și aparține de departament (opțional)
    try:
        day_obj = Day.objects.get(pk=day_id, GlobalObject_id=dept_id)
    except Day.DoesNotExist:
        return JsonResponse({'shift_types': []})

    # 3) Preluăm toate DayShiftType care au Day=day_obj (și,
    #    dacă vrei, ai putea filtra și după ShiftType__GlobalObject_id=dept_id,
    #    dar e redundant dacă Day deja știe departamentul).
    dst_qs = DayShiftType.objects.filter(Day=day_obj)

    # 4) Colectăm ID-urile de ShiftType cu gap > 0
    shift_ids = []
    for dst in dst_qs:
        try:
            gap = dst.gap_required_vs_actual()
        except Exception:
            gap = 0
        if gap > 0:
            shift_ids.append(dst.ShiftType_id)

    # 5) Filtrăm modelul ShiftType pentru acele ID‐uri, asigurându‐ne că aparțin de departament
    shift_qs = ShiftType.objects.filter(ShiftID__in=shift_ids, GlobalObject_id=dept_id)

    # 6) Formăm lista de dict‐uri {id, name} (sau orice câmp vrei)
    data = [
        {
            'id': st.pk,
            'name': st.pk,  # presupunem că există un câmp 'name'
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

# class CalendarViewNew(LoginRequiredMixin, generic.View):
#     login_url = "accounts:signin"
#     template_name = "calendarapp/calendar.html"
#     form_class = EventForm
#
#     def get(self, request, *args, **kwargs):
#         forms = self.form_class()
#         # events = Event.objects.get_all_events(user=request.user)
#         domain_pk = kwargs.get('global_object_id')
#         print("domain_pk ",domain_pk)
#         events=[]
#         if(domain_pk == 0):
#             events = Event.objects.filter(is_active=True, is_deleted=False)
#         else:
#             events = Event.objects.filter( is_active=True, is_deleted=False,department_id=domain_pk)
#         events_month = Event.objects.get_running_events(user=request.user)
#         #events_month = Event.objects.get_all_running_events()
#         event_list = []
#         email = request.user.email
#         emp_id = email.split('@', 1)[0]
#         print(emp_id)
#         user_dep_id=domain_pk
#         try:
#             nurse = Nurse.objects.get(EmployeeID=emp_id)
#             user_dep_id=nurse.GlobalObject_id
#
#
#         except Nurse.DoesNotExist:
#             user_dep_id = domain_pk
#
#         # start: '2020-09-16T16:00:00'
#         for event in events:
#             event_list.append(
#                 {
#                     "title": event.title,
#                     "start": event.start_time.strftime("%Y-%m-%dT%H:%M:%S"),
#                     "end": event.end_time.strftime("%Y-%m-%dT%H:%M:%S"),
#                     "description": event.description,
#                     'color': 'blue' if event.department_id ==user_dep_id else 'lightgray',
#                 }
#             )
#         deficits_by_day = defaultdict(int)
#         # presupunem că DayShiftType.gap_required_vs_actual() returnează NrRequired - ActualyNrCovered
#
#         for day in Day.objects.filter(GlobalObject=domain_pk):
#             for shift in ShiftType.objects.filter(GlobalObject=domain_pk):
#                 day_shift_type = DayShiftType.objects.get(Day_id=day.DayID, ShiftType_id=shift.ShiftID)
#                 gap = day_shift_type.gap_required_vs_actual()
#                 # print("gap ", gap)
#                 if gap > 0:
#                     deficits_by_day[int(str(day.DayID)[1:])] += gap
#
#         # 2) Transformă cheile în string-uri ISO
#         base_date = datetime(2025, 5, 1)  # sau cum îți definești tu startul
#         deficit_dates = [
#             (base_date + timedelta(days=day_offset)).strftime('%Y-%m-%d')
#             for day_offset in deficits_by_day.keys()
#         ]
#
#         context = {"form": forms, "events": event_list,
#                    "events_month": events_month,"deficit_dates": deficit_dates,}
#         return render(request, self.template_name, context)
#
#
#     def post(self, request, *args, **kwargs):
#         logger = logging.getLogger(__name__)
#         domain_pk = kwargs.get('global_object_id')
#         print("am intrat in post")
#         forms = self.form_class(request.POST)
#         if forms.is_valid():
#             form = forms.save(commit=False)
#             form.user = request.user
#             form.department_id=domain_pk
#             form.save()
#             logger.info(f"Event salvat, id={form.id}, title={form.title}")
#
#             # Verificăm că avem channel_layer
#             # channel_layer = get_channel_layer()
#             # logger.info(f"channel_layer: {channel_layer!r}")
#             # if channel_layer is None:
#             #     logger.error("get_channel_layer() a returnat None!")
#             # else:
#             #     try:
#             #         async_to_sync(channel_layer.group_send)(
#             #             'notificare_grup',
#             #             {
#             #                 'type': 'notificare_message',
#             #                 'message': f"Eveniment creat: {form.title}",
#             #                 'sender': request.user.email,
#             #             }
#             #         )
#             #         logger.info(">>> group_send a fost apelat cu succes")
#             #     except Exception as e:
#             #         logger.exception(f"Eroare la group_send:{e}")
#             #
#             # # Răspuns AJAX
#             # if request.headers.get('x-requested-with') == 'XMLHttpRequest':
#             #     return JsonResponse({'status': 'ok'})
#             return redirect("calendarapp:calendar", domain_pk)
#
#         logger.warning("Formular invalid: %s", forms.errors)
#         if request.headers.get('x-requested-with') == 'XMLHttpRequest':
#             return JsonResponse({'status': 'error', 'errors': forms.errors}, status=400)
#         return render(request, self.template_name, {'form': forms})

class CalendarViewNew(LoginRequiredMixin, generic.View):
    login_url = "accounts:signin"
    template_name = "calendarapp/calendar.html"
    form_class = EventForm

    def get(self, request, *args, **kwargs):
        # 1) Instanță EventForm și ShiftRequestForm
        event_form = self.form_class()


        # 2) Obținerea evenimentelor
        domain_pk = kwargs.get('global_object_id', 0)
        shift_request_form = ShiftRequestForm(department_id=domain_pk)
        if domain_pk == 0:
            events_qs = Event.objects.filter(is_active=True, is_deleted=False)
        else:
            events_qs = Event.objects.filter(is_active=True, is_deleted=False, department_id=domain_pk)

        events_month = Event.objects.get_running_events(user=request.user)

        # Construiesc lista de evenimente pentru FullCalendar
        event_list = []
        # Determin global_object al utilizatorului curent (nurse), pentru culoare
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

        # 3) Calcul deficit_dates
        deficits_by_day = defaultdict(int)
        for day in Day.objects.filter(GlobalObject=domain_pk):
            for shift in ShiftType.objects.filter(GlobalObject=domain_pk):
                try:
                    dst = DayShiftType.objects.get(Day_id=day.DayID, ShiftType_id=shift.ShiftID)
                    gap = dst.gap_required_vs_actual()
                    if gap > 0:
                        # aici convertim str(day.DayID)[1:] la număr de zile offset
                        deficits_by_day[int(str(day.DayID)[1:])] += gap
                except DayShiftType.DoesNotExist:
                    continue

        # Transform deficit_days în lista ISO de date (2025-05-XX)
        base_date = datetime(2025, 5, 1)
        deficit_dates = [
            (base_date + timedelta(days=offset)).strftime("%Y-%m-%d")
            for offset in deficits_by_day.keys()
        ]

        # 4) Construiesc contextul, incluzând și form_request
        context = {
            "form": event_form,
            "form_request": shift_request_form,   # <— adăugat AICI
            "events_month": events_month,
            "events": event_list,
            "deficit_dates": deficit_dates,
            "domain_pk": domain_pk,  # adaugăm domain_pk pentru a-l folosi în JS
            "nurse":emp_id
        }
        return render(request, self.template_name, context)

    def post(self, request, *args, **kwargs):
        logger = logging.getLogger(__name__)
        domain_pk = kwargs.get('global_object_id', 0)
        shift_request_form = ShiftRequestForm(request.POST, department_id=domain_pk)
        # 1) Prelucrare EventForm (nu afectează ShiftRequest)
        event_form = self.form_class(request.POST)
        if event_form.is_valid():
            ev = event_form.save(commit=False)
            ev.user = request.user
            ev.department_id = domain_pk
            ev.save()
            logger.info(f"Eveniment salvat, id={ev.id}, title={ev.title}")
            return redirect("calendarapp:calendar", domain_pk)

        # Dacă EventForm e invalid, refacem contextul și redăm cu erori
        shift_request_form = ShiftRequestForm()
        # Refolosim aceeași logică pentru datele calendarului:
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
            "form_request": shift_request_form,   # **aici tot trebuie prezent**
            "events_month": events_month,
            "events": event_list,
            "deficit_dates": deficit_dates,
            "domain_pk": domain_pk,  # adaugăm domain_pk pentru a-l folosi în JS
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
    """API endpoint pentru crearea unui ShiftRequest."""
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
        # 1) Parsează data ISO şi calculează PK pentru Day
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
