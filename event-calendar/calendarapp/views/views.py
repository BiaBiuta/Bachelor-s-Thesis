import json
import re

from django.contrib import messages
from django.urls import reverse
from django.views.decorators.http import require_POST, require_GET
from django.views.generic import View
from django.contrib.auth.mixins import LoginRequiredMixin
from django.shortcuts import render, get_object_or_404
from django.core.cache import cache
from pathlib import Path
from django.db.models import Q
import time
from calendarapp.models import Event
from calendarapp.models.nurse_day import NurseDay
from calendarapp.models.nurse import Nurse
from calendarapp.models.day_shift_type import DayShiftType
from calendarapp.models.nurse_day_shift_type import NurseDayShiftType
from calendarapp.models.global_object import GlobalObject
from calendarapp.models.shift_type import ShiftType
from calendarapp.models.day  import Day
from calendarapp.models.emergency_request import EmergencyRequest
from calendarapp.models.cereri.dayoff_option import DayOffOption
from calendarapp.models.cereri.dayoff_request import DayOffRequest
from calendarapp.models.cereri.shift_option import ShiftOption
from calendarapp.models.cereri.shift_request import ShiftRequest
from calendarapp.models.genetic_scheduler import GeneticScheduler
from calendarapp.models.schedule_generation_log import ScheduleGenerationLog
from calendarapp.models.nurse_shift_type import NurseShiftType
from calendarapp.models.scope_selection import ScopeSelection
from calendarapp.models.scope_selection_random import ScopeSelectionRandom
from calendarapp.models.scope_selection_min_total_minutes import ScopeSelectionMinTotalMinutes
from calendarapp.models.scope_selection_shift_on_request import ScopeSelectionShiftOnRequest
from calendarapp.models.scope_selection_shift_off_request import ScopeSelectionShiftOffRequest
from calendarapp.models.scope_selection_shift_over_cover import ScopeSelectionShiftOverCover
from calendarapp.models.scope_selection_shift_under_cover import ScopeSelectionShiftUnderCover
from calendarapp.models.optimizer import Optimizer
from calendarapp.models.optimizer_iteration import OptimizerIteration
from calendarapp.models.opt_scope_nurse import OptScopeNurse
from calendarapp.models.opt_scope_day import OptScopeDay
from calendarapp.models.opt_scope_shift_type import OptScopeShiftType
from calendarapp.models.opt_scope_nurse_shift_type import OptScopeNurseShiftType
from calendarapp.models.opt_scope_nurseday import OptScopeNurseDay
from calendarapp.models.opt_scope_day_shift_type import OptScopeDayShiftType
from calendarapp.models.opt_scope_nurse_day_shift_type import OptScopeNurseDayShiftType
from pyomo.core import quicksum
from calendarapp.views.utils import load_global_object

from accounts.models.user import User

from django.shortcuts import render
# calendarapp/views_chat.py
from django.contrib.auth.mixins import LoginRequiredMixin
from django.views.generic import ListView
from collections import defaultdict, Counter


class DashboardView(LoginRequiredMixin, ListView):
    login_url = "accounts:signin"
    template_name = "calendarapp/domains_dashboard.html"
    context_object_name = 'domains'
    # model = GlobalObject

    def get_queryset(self):
        # qs = super().get_queryset()
        qs=GlobalObject.objects.all()
        print(qs)
        for domain in qs:
            print("am intrat in for")
            # forțăm calcul KPI domeniu
            _ = domain.total_to_min
            # luăm toate asistentele din domeniu
            nurses = Nurse.objects.filter(GlobalObject=domain)
            # păstrăm doar pe cele cu deficit de minute
            domain.nurses_with_deficit = [
                n for n in nurses if n.minutes_to_max > 0
            ]
            print(domain)
            if domain.id!=112:
                deficits_by_day = defaultdict(list)
                for day in Day.objects.filter(GlobalObject=domain):
                    for shift in ShiftType.objects.filter(GlobalObject=domain):
                        day_shift_type=DayShiftType.objects.get(Day_id=day.DayID, ShiftType_id=shift.ShiftID)
                        gap=day_shift_type.gap_required_vs_actual()
                        print("gap ",gap)
                        if gap > 0:
                            deficits_by_day[day.DayID].append({
                                'shift_type': day_shift_type.ShiftType_id,
                                'gap': gap,
                            })
                domain.shift_deficits = [
                    {'day_id': day_id, 'needs': needs}
                    for day_id, needs in deficits_by_day.items()
                ]

        return qs

from datetime import datetime, timedelta
import random as rnd
from django.http import request, HttpResponseRedirect, Http404
from django.shortcuts import render, redirect
import prettytable
import os
# import cplex
# print(cplex.__version__)

# Adăugați manual CPLEX în PATH
os.environ["PATH"] += r";C:\Program Files\IBM\ILOG\CPLEX_Studio2212\cplex\bin\x64_win64"

# Debug: verificați variabila PATH
print("PATH:", os.environ["PATH"])
import sys
print("Python exec:", sys.executable)

from django.core.mail import send_mail
from django.conf import settings
from django.contrib.auth.decorators import login_required

from django.views.generic import View
        # Get the current date
today = datetime.now()
# Calculate the date of Monday and Friday of the current week
monday = today - timedelta(days=today.weekday())
friday = monday + timedelta(days=4)
# Get the current year
current_year = today.year
# Format the dates
monday_formatted = monday.strftime('%Y-%m-%d')
friday_formatted = friday.strftime('%Y-%m-%d')






def support( request):
    return render(request, 'pages/calendar.html')
POPULATION_SIZE = 9
NUMB_OF_ELITE_SCHEDULES = 1
TOURNAMENT_SELECTION_SIZE = 3
MUTATION_RATE = 0.1

import math
import datetime as dt
import os
import tempfile
import time
import random
import pyomo.environ as pyo
from pyomo.opt import SolverFactory, SolverStatus, TerminationCondition
from django.shortcuts import render, redirect
from calendarapp.models.cereri.shift_option import ShiftOption
from calendarapp.models.cereri.shift_request import ShiftRequest  # modelul de la pasul anterior
def schedule_view(request):
    print("am intrat in post")
    if request.method == "POST":
        try:
            data = json.loads(request.body)
            print("data ",data)
            # Extrage câmpurile din payload
            employee = data.get("nurse")
            date = data.get("day")
            shift_type = data.get("shift_type")
            req_type = data.get("req_type")
            weight = data.get("weight")
            department = data.get("department")
            nurse=Nurse.get(EmployeeID=int(employee))
            global_object=GlobalObject.get(id=nurse.GlobalObject_id)
            # Validare minimală
            if not (employee and date and shift_type):
                return JsonResponse({"error": "Missing required fields."}, status=400)
            num= re.search(r'\d+', global_object.name).group()  # extrage numărul din data
            # Creează instanța
            day =int(str(num+int((date.split("-")[2]).split("T")[0])))
            print ("day",day)
            day =Day.objects.get(DayID=day)
            schedule =  ShiftRequest.objects.create(
                    nurse      = nurse,
                    department = global_object,
                    day        = day,
                    shift_type = shift_type,
                    req_type   = req_type,    # sau orice logică ai tu
                    weight     = int(weight),       # poți prelua alt weight, după nevoie
                    status     = 'P',
                )
            schedule.save()

            return JsonResponse({"status": "success", "id": schedule.id})
        except Exception as e:
            return JsonResponse({"error": str(e)}, status=500)

    return JsonResponse({"error": "Invalid method"}, status=405)
@login_required
def choose_shift_requests(request):
    # 1) Obține shift-urile posibile (tocmai tipurile de shift, nelegat de zi)
    shift_types = ShiftType.objects.all().order_by('ShiftID')
    # Convertim într-o listă de dict-uri pentru JSON
    shift_types_list = [
        {'id': st.ShiftID, 'name': st.ShiftID}
        for st in shift_types
    ]

    if request.method == 'POST':
        # Formularul va trimite multiple valori de formă "YYYY-MM-DD|ShiftID"
        selections = request.POST.getlist('selections')
        # Preiau Nurse și Department ca exemplu
        nurse = Nurse.objects.get(EmployeeID=request.user.email.split("@")[0])
        # Pentru demonstrație, presupunem că toate cererile merg la același departament:
        # poți adapta după modelul tău (de ex. opt.department)
        department = GlobalObject.objects.first()

        created = 0
        for sel in selections:
            # Desfac “YYYY-MM-DD|ShiftID”
            try:
                day_str, shift_id = sel.split('|')
                day_obj = datetime.strptime(day_str, '%Y-%m-%d').date()
                day=str(day_obj).split("-")[2]
                day=Day.objects.get(DayID=day)
                stype = ShiftType.objects.get(ShiftID=shift_id)
                # Creează cererea
                ShiftRequest.objects.create(
                    nurse      = nurse,
                    department = department,
                    day        = day,
                    shift_type = stype,
                    req_type   = 'ON',    # sau orice logică ai tu
                    weight     = 1,       # poți prelua alt weight, după nevoie
                    status     = 'P',
                )
                created += 1
            except Exception as e:
                # Dacă datele nu sunt valide, sari peste
                print(f"Error processing selection {sel}: {e}")
                continue

        # Poți afișa un mesaj cu câte cereri au fost create
        messages.success(request, f"{created} cereri au fost trimise.")
        return redirect('calendarapp:requests_submitted')

    # Dacă nu e POST, trimitem template-ului doar lista de shift_types
    import json
    return render(request, 'calendarapp/choose_shift_requests.html', {
        'shift_types_json': json.dumps(shift_types_list),
    })
# @login_required
# def choose_dayoff_requests(request):
#     # 1) identificăm asistenta
#     uid = request.user.email.split("@")[0]
#     print("DEBUG: user email prefix:", uid)
#     nurse = get_object_or_404(Nurse, EmployeeID=uid)
#     print("DEBUG: found nurse:", nurse)
#
#     # 2) aflăm zilele pentru care există deja cereri Pending sau Approved
#     pending_days  = list(DayOffRequest.objects.filter(
#         nurse=nurse, status='P'
#     ).values_list('day_id', flat=True))
#     approved_days = list(DayOffRequest.objects.filter(
#         nurse=nurse, status='A'
#     ).values_list('day_id', flat=True))
#     print("DEBUG: pending_days IDs:", pending_days)
#     print("DEBUG: approved_days IDs:", approved_days)
#
#     # 3) filtrăm opţiunile
#     qs = DayOffOption.objects.filter(nurse=nurse)
#     print("DEBUG: all options count:", qs.count(), "->", list(qs.values_list('day_id', flat=True)))
#     options = qs.exclude(day_id__in=pending_days)
#     options = qs.exclude(day_id__in=approved_days)
#     print("DEBUG: filtered options count:", options.count(), "->", list(options.values_list('day_id', flat=True)))
#
#     if request.method == 'POST':
#         selected = request.POST.getlist('options')
#         print("DEBUG: POST selected option IDs:", selected)
#         for opt_id in selected:
#             opt = DayOffOption.objects.get(pk=opt_id)
#             print(f"DEBUG: creating request for day {opt.day.DayID} (id={opt.day.DayID})")
#             DayOffRequest.objects.create(
#                 nurse      = nurse,
#                 department = opt.department,
#                 day        = opt.day,
#                 status     = 'P',
#             )
#         return redirect('calendarapp:requests_submitted')
#
#     # înainte de render, mai un print
#     print("DEBUG: rendering template with options:", list(options.values_list('id', 'day_id')))
#     return render(request,
#                   'calendarapp/choose_dayoff_requests.html',
#                   {
#                     'options': options,
#                     'approved_days': set(approved_days),
#                   })
@login_required

def choose_dayoff_requests(request):
    # 1) identificăm asistenta
    uid = request.user.email.split("@")[0]
    print(f"DEBUG: Prefixul email-ului userului: {uid}")
    nurse = get_object_or_404(Nurse, EmployeeID=uid)
    print(f"DEBUG: Nurse găsită: {nurse} (ID intern: {nurse.EmployeeID})")

    # 2) găsim zilele deja în Pending sau Approved
    pending_qs = DayOffRequest.objects.filter(nurse=nurse, status='P')
    pending_days = list(pending_qs.values_list('day_id', flat=True))
    print(f"DEBUG: Pending DayOffRequest pentru nurse {nurse}: {pending_days}")

    approved_qs = DayOffRequest.objects.filter(nurse=nurse, status='A')
    approved_days = list(approved_qs.values_list('day_id', flat=True))
    print(f"DEBUG: Approved DayOffRequest pentru nurse {nurse}: {approved_days}")

    used_days = set(pending_days) | set(approved_days)
    print(f"DEBUG: Combined used_days (pending ∪ approved): {used_days}")

    # 3) listă completă de opțiuni înainte de filtrare
    qs = DayOffOption.objects.filter(nurse=nurse)
    all_option_ids = list(qs.values_list('id', flat=True))
    all_days_ids = list(qs.values_list('day_id', flat=True))
    print(f"DEBUG: Count total DayOffOption pentru nurse {nurse}: {qs.count()}")
    print(f"DEBUG: DayOffOption IDs: {all_option_ids}")
    print(f"DEBUG: DayOffOption day_id list: {all_days_ids}")

    # Filtrăm: excludem zilele care apar în used_days
    options = qs.exclude(day_id__in=used_days)
    filtered_option_ids = list(options.values_list('id', flat=True))
    filtered_days_ids = list(options.values_list('day_id', flat=True))
    print(f"DEBUG: DayOffOption filtrate (exclude used_days): {options.count()}")
    print(f"DEBUG: Filtrate option IDs: {filtered_option_ids}")
    print(f"DEBUG: Filtrate day_id list: {filtered_days_ids}")

    if request.method == 'POST':
        selected = request.POST.getlist('options')
        print(f"DEBUG: POST received selected option IDs: {selected}")

        for opt_id in selected:
            print(f"  - Procesăm opt_id = {opt_id}")
            opt = get_object_or_404(DayOffOption, pk=opt_id)
            print(f"    • DayOffOption găsit: {opt} → Ziua: {opt.day.DayID} (id={opt.day.DayID})")

            # Verificare suplimentară: nu mai dăm drumul la adăugare dacă ziua e deja în used_days
            if opt.day.DayID not in used_days:
                DayOffRequest.objects.create(
                    nurse      = nurse,
                    department = opt.department,
                    day        = opt.day,
                    status     = 'P',
                )
                print(f"    ✓ Am creat DayOffRequest pentru ziua {opt.day.DayID}")
            else:
                print(f"    ✗ Ziua {opt.day.DayID} este deja în used_days → nu se creează duplicate")

        return redirect('calendarapp:requests_submitted')

    print("DEBUG: Rendăm choose_dayoff_requests.html cu următoarele context values:")
    print(f"  • options IDs: {filtered_option_ids}")
    print(f"  • approved_days set: {approved_days}")
    return render(request, 'calendarapp/choose_dayoff_requests.html', {
        'options': options,
        'approved_days': set(approved_days),
    })

@login_required
def requests_submitted(request):
    return render(request, 'calendarapp/requests_submitted.html')
def read_instance_file(file_path: str):
    global raw_data, horizon_length
    global shifttype_input_start, shifttype_input_end
    global nurse_input_start, nurse_input_end,daysoff_input_start,daysoff_input_end,shifton_req_input_start,shifton_req_input_end
    # …etc for all the other section‐markers…
    global global_object,shiftoff_req_input_start,shiftoff_req_input_end,cover_req_input_start,cover_req_input_end

    # 1) read the file
    with open(file_path, 'r') as f:
        raw_data = f.readlines()

    # 2) compute your globals
    horizon_length =int(raw_data[4])
    shifttype_input_start = raw_data.index('SECTION_SHIFTS\n') + 2
    shifttype_input_end = raw_data.index('SECTION_STAFF\n') - 1
    nurse_input_start = raw_data.index('SECTION_STAFF\n') + 2
    nurse_input_end = raw_data.index('SECTION_DAYS_OFF\n') - 1
    daysoff_input_start = raw_data.index('SECTION_DAYS_OFF\n') + 2
    daysoff_input_end = raw_data.index('SECTION_SHIFT_ON_REQUESTS\n') - 1
    shifton_req_input_start = raw_data.index('SECTION_SHIFT_ON_REQUESTS\n') + 2
    shifton_req_input_end = raw_data.index('SECTION_SHIFT_OFF_REQUESTS\n') - 1
    shiftoff_req_input_start = raw_data.index('SECTION_SHIFT_OFF_REQUESTS\n') + 2
    shiftoff_req_input_end = raw_data.index('SECTION_COVER\n') - 1
    cover_req_input_start = raw_data.index('SECTION_COVER\n') + 2
    cover_req_input_end = len(raw_data)
    # …and so on for daysoff_input_start/end, shifton_req_input_start/end, etc.

    # 3) build your GlobalObject
    #global_object = GlobalObject(HorizonLength=horizon_length)
    print("a fost apelat timetable ")
    #GlobalObject.objects.all().delete()
    print("horizon_length ", horizon_length)
    file=Path(file_path)
    global_object_name =file.name
    global_object = GlobalObject(HorizonLength=int(horizon_length),Name=global_object_name)
    global_object.save()
    global_object_id = GlobalObject.objects.all().last().id
    print(global_object_id)
    #citire si creare shiftType
    for shifttype in raw_data[shifttype_input_start:shifttype_input_end]:
        shifttype_information = shifttype.split(',')
        shift_id = shifttype_information[0]
        length_in_mins = int(shifttype_information[1])
        forbidden_shifts = shifttype_information[2].strip().split('|')
        forbidden_shifts = [i for i in forbidden_shifts if i]

        # Create new ShiftType object
        new_shifttype = ShiftType(shift_id, length_in_mins, forbidden_shifts, global_object_id)
        #print(new_shifttype.ShiftID, ",", new_shifttype.LengthInMins)
        global_object.set_relation_shifttype(new_shifttype)
        new_shifttype.save()
        # print('create new shifttype', shift_id, length_in_mins, forbidden_shifts, new_shifttype.ForbiddenShifts == [], len(new_shifttype.ForbiddenShifts))
    #citire si creare nurse
    for nurse in raw_data[nurse_input_start:nurse_input_end]:
        nurse_information = nurse.split(',')
        employee_id = nurse_information[0]
        max_shifts = nurse_information[1]
        max_total_mins = float(nurse_information[2])
        min_total_mins = float(nurse_information[3])
        max_cons_shifts = int(nurse_information[4])
        min_cons_shifts = int(nurse_information[5])
        max_cons_days_off = int(nurse_information[6])
        max_weekends = int(nurse_information[7])

        # Create new Nurse object
        new_nurse = Nurse(employee_id, max_shifts, max_total_mins, min_total_mins, max_cons_shifts, min_cons_shifts,
                          max_cons_days_off, max_weekends,
                          float('inf'), global_object_id)

        u1 = User.objects.create_user(
            email=f"{employee_id}@example.com",
            password=f'{employee_id}',
            unitate_medicala=global_object_id,
            username= employee_id
        )
        new_nurse.save()
        global_object.set_relation_nurse(new_nurse)

        # print('create new nurse', employee_id, max_shifts, max_total_mins, min_total_mins, max_cons_shifts, min_cons_shifts, max_cons_days_off, max_weekends)
    num = re.search(r'\d+', global_object_name).group()
    #citire si creare day
    for day in range(global_object.HorizonLength):
        # Create new Day object
        d = Day(num+str(day), global_object_id)
        d.save()
        global_object.set_relation_day(d)
        # print("Day", d.DayID)
    #creare relatii intre zile
    for day in global_object.Day:
        day.get_next(global_object)
        day.save()
        day.get_prev(global_object)
        day.save()
        # print("Day",day.DayID)
    #creare nurse_shift_type
    for nurse in global_object.Nurse:
        for maxshift in nurse.MaxShifts.split('|'):
            equal_index = maxshift.index('=')
            shiftID = maxshift[0:equal_index]
            # shifttype = ShiftType.objects.filter(ShiftID=shiftID).first()
            shifttype = [s for s in global_object.ShiftType if s.ShiftID == shiftID][0]
            maxs = int(maxshift[equal_index + 1:])
            nur = NurseShiftType(Nurse=nurse, ShiftType=shifttype, MaxShifts=maxs)
            nur.save()
    print("nurse_shift_type salvate")
    #creare nurse_day
    for nurse in global_object.Nurse:
        for day in global_object.Day:
            # Create new NurseDay object
            nr = NurseDay(IsDayOff=False, Nurse=nurse, Day=day)
            nr.save()

    print("relatiile de ziua sunt create")
    #
    print("nurse day salvate")
    #days_off
    for dayoff in raw_data[daysoff_input_start:daysoff_input_end]:
        dayoff_information = dayoff.split(',')
        dayoff_nurse = dayoff_information[0]
        dayoff_dayoffs = dayoff_information[1:]

        nurse = [n for n in global_object.Nurse if n.EmployeeID == dayoff_nurse][0]
        nurse_ob=Nurse.objects.get(EmployeeID=dayoff_nurse)
        for dayoff in dayoff_dayoffs:
            off = int(dayoff.strip())
            day=Day.objects.get(DayID=f"{num}{int(off)}")
            DayOffOption.objects.create(nurse=nurse_ob, department=global_object,day=day)
            #print("off", int(num+str(off)))
            #print(global_object.Day)
            #day = [d for d in global_object.Day if d.DayID == (num+str(off))][0]
            # Find NurseDay object
            # nurseday = [nd for nd in nurse.NurseDay if nd.Day == day][0]
            #
            # nurseday.IsDayOff = True
            # nurseday.save()
    print("day off salvate")
    # for nurse in global_object.Nurse:
    #     for nurseday in nurse.NurseDay:
    #         nurseday.get_next()
    #         # nurseday.save()
    #         nurseday.get_prev()
    #         # nurseday.save()
    # print("relatiile de nurse day sunt create")

    for shiftonreq in raw_data[shifton_req_input_start:shifton_req_input_end]:
        shiftonreq_information = shiftonreq.split(',')
        shiftonreq_nurse = shiftonreq_information[0]
        shiftonreq_day = int(shiftonreq_information[1])
        shiftonreq_shift = shiftonreq_information[2]
        shiftonreq_onrequestweight = float(shiftonreq_information[3])
        nurse= Nurse.objects.get(EmployeeID=shiftonreq_nurse)
        day  = Day.objects.get(DayID=f"{num}{int(shiftonreq_day)}")
        shiftype=ShiftType.objects.get(ShiftID=shiftonreq_shift)
        ShiftOption.objects.create(nurse=nurse,department=global_object,day=day,shift_type=shiftype, req_type='ON',weight=shiftonreq_onrequestweight)
        # nurse = [n for n in global_object.Nurse if n.EmployeeID == shiftonreq_nurse][0]
        # day = [d for d in global_object.Day if d.DayID == (num+str(shiftonreq_day))][0]
        # shifttype = [s for s in global_object.ShiftType if s.ShiftID == shiftonreq_shift][0]
        #
        # # Create new NurseShiftTypeDay object
        # nurseday = [nd for nd in nurse.NurseDay if nd.Day == day][0]
        #
        # nd = NurseDayShiftType(IsOnRequest=True, IsOffRequest=False, OnRequestWeight=shiftonreq_onrequestweight,
        #                        OffRequestWeight=0.0, Nurse=nurse, Day=day, ShiftType=shifttype, NurseDay=nurseday)
        # nd.save()

    for shiftoffreq in raw_data[shiftoff_req_input_start:shiftoff_req_input_end]:
        shiftoffreq_information = shiftoffreq.split(',')
        shiftoffreq_nurse = shiftoffreq_information[0]
        shiftoffreq_day = int(shiftoffreq_information[1])
        shiftoffreq_shift = shiftoffreq_information[2]
        shiftoffreq_offrequestweight = float(shiftoffreq_information[3])
        nurse = Nurse.objects.get(EmployeeID=shiftoffreq_nurse)
        day = Day.objects.get(DayID=f"{num}{int(shiftoffreq_day)}")
        shiftype = ShiftType.objects.get(ShiftID=shiftoffreq_shift)
        ShiftOption.objects.create(nurse=nurse, department=global_object, day=day, shift_type=shiftype, req_type='OF',
                                   weight=shiftoffreq_offrequestweight)

    for cover in raw_data[cover_req_input_start:cover_req_input_end]:
        cover_information = cover.split(',')
        cover_day = int(cover_information[0])
        cover_shift = cover_information[1]
        cover_req = int(cover_information[2])
        cover_underweight = float(cover_information[3])
        cover_overweight = float(cover_information[4])

        day = [d for d in global_object.Day if d.DayID ==(num+str(cover_day))][0]
        shifttype = [s for s in global_object.ShiftType if s.ShiftID == cover_shift][0]

        # Create new DayShiftType object
        dst = DayShiftType(NrRequired=cover_req, UnderCoverWeight=cover_underweight, OverCoverWeight=cover_overweight,
                           ShiftType=shifttype, Day=day)
        dst.save()

    print("shift type day salvate")

    all_shifttypes = [shifttype for shifttype in global_object.ShiftType]
    #
    for nurse in global_object.Nurse:  # Obținem toți medicii din baza de date
        for nurseday in nurse.NurseDay:  # Obținem toate zilele de lucru ale fiecărui medic
            # Obținem toate ShiftType-urile deja atribuite acelei zile
            nds_shifts = [nds.ShiftType for nds in nurseday.NurseDayShiftType]
            nds_shifts_to_create = [s for s in all_shifttypes if s not in nds_shifts]

            # Găsim ShiftType-urile care nu sunt deja atribuite

            for shifttype in nds_shifts_to_create:
                # Creăm un nou obiect NurseDayShiftType și îl salvăm
                nds = NurseDayShiftType(
                    IsOffRequest=False,
                    IsOnRequest=False,
                    OnRequestWeight=0.0,
                    OffRequestWeight=0.0,
                    Nurse=nurse,
                    Day=nurseday.Day,
                    ShiftType=shifttype,
                    NurseDay=nurseday
                )
                #nds.save()
    return global_object
@login_required
def instance_list(request):
    base = settings.INSTANCE_DIR  # ex: r'C:\…\data\instances1_24'
    # 1) enumerăm toate .txt
    files = [f for f in os.listdir(base) if f.endswith('.txt')]

    # 2) construim lista de tupluri (path, display_name)
    instances = []
    for fn in files:
        full_path = os.path.normpath(os.path.join(base, fn))
        # extragem "Instance1" din "Instance1.txt"
        name, _ext = os.path.splitext(fn)   # name == "Instance1"
        # extragem doar numărul (presupunem formatul "Instance<N>")
        num = name.replace('Instance', '')  # num == "1"
        display = f'Unitate medicală {num}'
        instances.append((full_path, display))

    return render(request, 'calendarapp/instance_list.html', {
        'instances': instances,
    })

@login_required
def instance_detail(request, file_path):
    if not os.path.exists(file_path):
        raise Http404("Fișierul nu există")
    go = read_instance_file(file_path)

    # Ia lista curentă din sesiune (sau creeaz-o dacă nu există)
    gos = request.session.get('global_object_ids', [])
    if go.id not in gos:
        gos.append(go.id)
        request.session['global_object_ids'] = gos

    return render(request, 'calendarapp/instance_detail.html', {
        'file_path': file_path,
        'data': go,
    })
# views_chat.py
from django.views.decorators.http import require_POST

@login_required
@require_POST
def select_instance(request):
    go_id = request.POST.get('unitate')
    # sesiunea cu toate GO-urile încărcate
    gos = request.session.get('global_object_ids', [])
    if not go_id or int(go_id) not in gos:
        raise Http404("Setul de date nu există sau nu ai acces la el.")
    # setează GO-ul activ
    request.session['global_object_id'] = int(go_id)
    req_ids = request.POST.get('request_ids', '')
    selected_req_ids = [int(x) for x in req_ids.split(',') if x.strip()]
    # salvează-le în sesiune
    request.session['picked_shift_reqs'] = selected_req_ids
    print(selected_req_ids)
    without_algo = request.POST.get('without_algorithm') == 'true'
    if without_algo:
        return redirect('calendarapp:timetable_without_algorithm')
    return redirect('calendarapp:timetable')


@login_required
@require_GET
@login_required
def unit_details_ajax(request, unit_id):
    go = get_object_or_404(GlobalObject, pk=unit_id)
    # păstrăm selectarea în sesiune
    request.session['global_object_id'] = go.id

    # statistici de bază
    nurse_count     = Nurse.objects.filter(GlobalObject=go).count()
    shifttype_count = ShiftType.objects.filter(GlobalObject=go).count()
    last_log = ScheduleGenerationLog.objects.filter(department=go) \
                  .order_by('-generated_at') \
                  .first()
    last_gen = last_log.generated_at.strftime('%d.%m.%Y') if last_log else '–––'

    # KPI-uri deja calculate şi stocate în GO
    total_minutes   = go.TotalMinutes
    to_min          = go.TotalMinutesToMin
    to_max          = go.TotalMinutesToMax

    # cererile de shift
    pending_reqs = ShiftRequest.objects.filter(
        department=go,
        status='P'
    ).select_related('nurse', 'day', 'shift_type')

    requests_data = []
    for req in pending_reqs:
        requests_data.append({
            'id':    req.id,
            'nurse': req.nurse.EmployeeID,
            'day':   req.day.DayID,
            'shift': req.shift_type.ShiftID,
            'type':  req.get_req_type_display(),
        })

    return JsonResponse({
        'nurses':          nurse_count,
        'shifttypes':      shifttype_count,
        'last_generation': last_gen,
        'total_minutes':   total_minutes,
        'to_min':          to_min,
        'to_max':          to_max,
        'shift_requests':  requests_data,
    })

@login_required
def choose_instance(request):
    go_ids = request.session.get('global_object_ids', [])

    # 2) Preia toate GlobalObject-urile relevante (de ex. toate sau doar cele ale user-ului)
    all_go_ids = list(GlobalObject.objects.values_list('id', flat=True))

    # 3) Adaugă în sesiune orice id nou
    for _id in all_go_ids:
        if _id not in go_ids:
            go_ids.append(_id)

    # 4) Salvează în sesiune O DATĂ, după buclă
    request.session['global_object_ids'] = go_ids

    # 5) Afișează în template exact obiectele din sesiune
    gos = GlobalObject.objects.filter(id__in=go_ids)
    gos_with_number = []
    for go in gos:
        # Căutăm primul grup de cifre din go.Name
        match = re.search(r'(\d+)', go.Name)
        number = match.group(1) if match else '-'  # în caz că nu găseşte
        gos_with_number.append({
            'object': go,
            'number': number,
        })
    go_id = request.session.get('global_object_id')
    print("go_id",go_id)
    generate_logs=[]
    for go in gos:
        sch= ScheduleGenerationLog.objects.filter(department_id=go.id)
        for sc in sch:
            generate_logs .append (
                sc
            )
    shift_reqs = []
    if go_id:
        shift_reqs = ShiftRequest.objects.filter(
            department_id=go_id,
            status='P'  # doar cele în aşteptare
        ).select_related('nurse', 'day', 'shift_type')

    kpi_results = request.session.pop('kpi_results', None)


        # 5) Dai contextul către template
    return render(request, 'calendarapp/choose_instance.html', {
        'global_objects': gos_with_number,
        'generate_logs': generate_logs,
        "shift_requests": shift_reqs,
        'kpi_results': kpi_results,
    })


@login_required
def timetable(request):
    #citesc_fisier()

    print("a fost apelat timetable ")
    start_time = time.perf_counter()
    picked = request.session.pop('picked_shift_reqs', [])
    if len(picked)>0:
        NurseDayShiftType.objects.all().delete()
        NurseDay.objects.all().delete()
    go_ids = request.session.get('global_object_ids', [])
    active_go = request.session.get('global_object_id')

    # dacă nu ai niciun GO activ, dar ai cel puţin unul în sesiune,
    # setează-l pe primul (sau redirecţionează la 'choose_instance')
    if not active_go:
        if len(go_ids) == 1:
            active_go = go_ids[0]
            request.session['global_object_id'] = active_go
        else:
            return redirect('calendarapp:choose_instance')

    global_object = load_global_object(active_go)
    global_object_id=global_object.id
    global_object_name=global_object.Name

    with open(fr".\..\database\instances1_24\{global_object_name}", 'r') as f:
        raw_data = f.readlines()

    # 2) compute your globals


    horizon_length = int(raw_data[4])
    shifttype_input_start = raw_data.index('SECTION_SHIFTS\n') + 2
    shifttype_input_end = raw_data.index('SECTION_STAFF\n') - 1
    nurse_input_start = raw_data.index('SECTION_STAFF\n') + 2
    nurse_input_end = raw_data.index('SECTION_DAYS_OFF\n') - 1
    daysoff_input_start = raw_data.index('SECTION_DAYS_OFF\n') + 2
    daysoff_input_end = raw_data.index('SECTION_SHIFT_ON_REQUESTS\n') - 1
    shifton_req_input_start = raw_data.index('SECTION_SHIFT_ON_REQUESTS\n') + 2
    shifton_req_input_end = raw_data.index('SECTION_SHIFT_OFF_REQUESTS\n') - 1
    shiftoff_req_input_start = raw_data.index('SECTION_SHIFT_OFF_REQUESTS\n') + 2
    shiftoff_req_input_end = raw_data.index('SECTION_COVER\n') - 1
    cover_req_input_start = raw_data.index('SECTION_COVER\n') + 2
    cover_req_input_end = len(raw_data)
    shiftypes = ShiftType.objects.filter(GlobalObject_id=global_object_id)
    days = Day.objects.filter(GlobalObject_id=global_object_id)
    nurses = Nurse.objects.filter(GlobalObject_id=global_object_id)
    for shiftype in shiftypes:
        shift_id = shiftype.ShiftID
        length_in_mins = shiftype.LengthInMins
        forbidden_shifts = shiftype.ForbiddenShifts
        forbidden_shifts = [i for i in forbidden_shifts if i]

        # Create new ShiftType object
        new_shifttype = ShiftType(shift_id, length_in_mins, forbidden_shifts, global_object_id)
        print(new_shifttype.ShiftID, ",", new_shifttype.LengthInMins)
        global_object.set_relation_shifttype(new_shifttype)
    for nurse in nurses:
        employee_id = nurse.EmployeeID
        max_shifts = nurse.MaxShifts
        max_total_mins = float(nurse.MaxTotalMins)
        min_total_mins = float(nurse.MinTotalMins)
        max_cons_shifts = int(nurse.MaxConsShifts)
        min_cons_shifts = int(nurse.MinConsShifts)
        max_cons_days_off = int(nurse.MinConsDaysOff)
        max_weekends = int(nurse.MaxWeekends)
        new_nurse = Nurse(employee_id, max_shifts, max_total_mins, min_total_mins, max_cons_shifts, min_cons_shifts,
                          max_cons_days_off, max_weekends,
                          float('inf'), global_object_id)
        # new_nurse.save()
        global_object.set_relation_nurse(new_nurse)

    for day in range(global_object.HorizonLength):
        d = Day(day, global_object_id)
        global_object.set_relation_day(d)
    for day in global_object.Day:
        day.get_next(global_object)
        day.get_prev(global_object)
    for nurse in global_object.Nurse:
        for maxshift in nurse.MaxShifts.split('|'):
            equal_index = maxshift.index('=')
            shiftID = maxshift[0:equal_index]
            shifttype = [s for s in global_object.ShiftType if s.ShiftID == shiftID][0]
            maxs = int(maxshift[equal_index + 1:])
            nur = NurseShiftType(Nurse=nurse, ShiftType=shifttype, MaxShifts=maxs)
    print("nurse_shift_type salvate")
    nr =None
    for nurse in global_object.Nurse:
        for day in global_object.Day:
            nr = NurseDay(IsDayOff=False, Nurse=nurse, Day=day)
    for nurse in global_object.Nurse:
        for nurseday in nurse.NurseDay:
            nurseday.get_next()
            nurseday.get_prev()
    print("relatiile de nurse day sunt create")
    num = re.search(r'\d+', global_object.Name).group()
    for rid in picked:
        req = ShiftRequest.objects.get(pk=rid)
        nurse = Nurse.objects.get(EmployeeID=req.nurse_id)
        print("Nurse maxshifts", nurse.TotalMins)
        if nurse.TotalMins < nurse.MinTotalMins:
            nurse.MinTotalMins=0
        else:
            nurse.MinTotalMins = nurse.TotalMins-nurse.MinTotalMins
            #aici mai trebuie sa scad si din maxim
        print("nurse nou", nurse.EmployeeID)
        # daca nurse e din alt domeniu il adaug fictiv in acest domeniu ca sa generez orarul
        if req.department_id != nurse.GlobalObject_id:
            print(" e din alt apartament ")
            #nurse.GlobalObject_id = req.department_id
            global_object.set_relation_nurse(nurse)
            # la shiftType ar trebui sa isi poate alege ea din cele existente nu il mai adaug
            for day in global_object.Day:
                print(day.DayID, req.day.DayID)
                if int(day.DayID) != int(str(req.day.DayID)[1:]):
                    print("am intrat in day ", day.DayID)
                    nr = NurseDay(IsDayOff=True, Nurse=nurse, Day=day)
                else:
                    # daca e ziua ceruta de ea atunci ii adaug shiftul
                    nr = NurseDay(IsDayOff=False, Nurse=nurse, Day=day)
                    nd = NurseDayShiftType(IsOnRequest=True, IsOffRequest=False, OnRequestWeight=req.weight,
                                           OffRequestWeight=0.0, Nurse=nurse, Day=req.day, ShiftType=req.shift_type,
                                           NurseDay=nr)
            # ii adaug un maxShifts (sa ceara numai o data )
            for nr in global_object.ShiftType:
                if nr.ShiftID == req.shift_type.ShiftID:
                    print("am intrat in shift type ", nr.ShiftID)
                    nur = NurseShiftType(Nurse=nurse, ShiftType=req.shift_type, MaxShifts=1)
                else:
                    nur=NurseShiftType(Nurse=nurse, ShiftType=nr, MaxShifts=0)


        else:
            print("nu e din alt apartament")
            # daca e in acelasi domeniu atunci ii adaug shiftul
            nr=[]
            for n in global_object.Nurse:
                if n.EmployeeID==nurse.EmployeeID:
                    print("sunt in nurse ")
                    for nd in n.NurseDay:
                        print(f"  • DayID: {nd.Day.DayID}")
                        print("req.day" ,req.day.DayID)
                        if int(nd.Day.DayID)==int(str(req.day.DayID)[1:]) :
                            nr=nd
            nd = NurseDayShiftType(IsOnRequest=True, IsOffRequest=False, OnRequestWeight=req.weight,
                                   OffRequestWeight=0.0, Nurse=nurse, Day=req.day, ShiftType=req.shift_type,
                                   NurseDay=nr)
    # for d in global_object.Day:
    #     print(f"\nDay {d.DayID}  (Next: {getattr(d.Next, 'DayID', None)}, Prev: {getattr(d.Previous, 'DayID', None)})")
    #     print("  NurseDay-uri:")
    #     for nd in d.NurseDay:
    #         assigned = nd.AssignedShift.ShiftID if nd.AssignedShift else "None"
    #         print(
    #             f"    • NurseDay(Nurse={nd.Nurse.EmployeeID}, IsDayOff={nd.IsDayOff}, Assigned={assigned})")
    #         print("      ↳ NurseDayShiftType:")
    #         for ndst in nd.NurseDayShiftType:
    #             print(
    #                 f"         - ShiftType={ndst.ShiftType.ShiftID}, OnReq={ndst.IsOnRequest}, OffReq={ndst.IsOffRequest}")
    #     print("  DayShiftType-uri:")
    # print("\nNurses:")
    # for n in global_object.Nurse:
    #     print(f"\nNurse {n.EmployeeID}  (MinTotal={n.MinTotalMins}, MaxTotal={n.MaxTotalMins})")
    #     print("  NurseShiftType-uri:")
    #     for nst in n.NurseShiftType:
    #         print(f"    • ShiftType={nst.ShiftType.ShiftID}, MaxShifts={nst.MaxShifts}")
    #     print("  NurseDay-uri:")
    #     for nd in n.NurseDay:
    #         assigned = nd.AssignedShift.ShiftID if nd.AssignedShift else "None"
    #         print(f"    • Day={nd.Day.DayID}, IsDayOff={nd.IsDayOff}, Assigned={assigned}")


    print("relatiile de ziua sunt create")
    print("nurse day salvate")
    dayoff_reqs = DayOffRequest.objects.filter(
        department=global_object,
        status='A',
        from_file=True
    )

    for req in dayoff_reqs:
        #print(f"dayyyyy {num + str(req.day_id)}")
        nurse = next(n for n in global_object.Nurse if n.EmployeeID == req.nurse_id)
        day = [d for d in global_object.Day if d.DayID == int(req.day_id[1:])][0]
        print(f"day {day}")
        nurseday = [nd for nd in nurse.NurseDay if nd.Day == day][0]
        nurseday.IsDayOff = True
        #nurseday.save()
    print("day off salvate")

    shift_on_reqs = ShiftRequest.objects.filter(
        department=global_object,
        status='A',
        from_file=True,
        req_type='ON'
    )

    for shiftonreq in shift_on_reqs:
        shiftonreq_nurse = shiftonreq.nurse_id
        shiftonreq_day = shiftonreq.day_id
        shiftonreq_shift = shiftonreq.shift_type_id
        shiftonreq_onrequestweight = float(shiftonreq.weight)
        nurse = [n for n in global_object.Nurse if n.EmployeeID == shiftonreq_nurse][0]
        day = [d for d in global_object.Day if d.DayID == int(shiftonreq_day[1:])][0]
        shifttype = [s for s in global_object.ShiftType if s.ShiftID == shiftonreq_shift][0]
        nurseday=[]
        for nd in nurse.NurseDay:
            print(f"  • DayID: {nd.Day.DayID}")
            if int(nd.Day.DayID) == int(day.DayID):
                print("a intrat aici")
                nurseday.append(nd)
        print(f"nurseday {nurseday}")
        nurseday = nurseday[0]
        print(f"{nurse.EmployeeID} {day.DayID} {shifttype.ShiftID} {nurseday.pk}")
        nd = NurseDayShiftType(IsOnRequest=True, IsOffRequest=False, OnRequestWeight=shiftonreq_onrequestweight,
                                OffRequestWeight=0.0, Nurse=nurse, Day=day, ShiftType=shifttype, NurseDay=nurseday)
        # nd.save()

    shift_off_reqs = ShiftRequest.objects.filter(
        department=global_object,
        status='A',
        from_file=True,
        req_type='OFF'
    )
    for shiftoffreq in shift_off_reqs:
        # shiftoffreq_information = shiftoffreq.split(',')
        shiftoffreq_nurse = shiftoffreq.nurse_id
        shiftoffreq_day = int(shiftoffreq.day_id)
        shiftoffreq_shift = shiftoffreq.shift_type_id
        shiftoffreq_offrequestweight = float(shiftoffreq.weight)
        nurse = [n for n in global_object.Nurse if n.EmployeeID == shiftoffreq_nurse][0]
        day = [d for d in global_object.Day if d.DayID == shiftoffreq_day][0]
        shifttype = [s for s in global_object.ShiftType if s.ShiftID == shiftoffreq_shift][0]
        nurseday = [nd for nd in nurse.NurseDay if nd.Day == day][0]
        nds = NurseDayShiftType(IsOnRequest=False, IsOffRequest=True, OnRequestWeight=0.0,
                                OffRequestWeight=shiftoffreq_offrequestweight, Nurse=nurse, Day=day,
                                ShiftType=shifttype, NurseDay=nurseday)
        #nds.save()

    for cover in raw_data[cover_req_input_start:cover_req_input_end]:
        cover_information = cover.split(',')
        cover_day = int(cover_information[0])
        cover_shift = cover_information[1]
        cover_req = int(cover_information[2])
        cover_underweight = float(cover_information[3])
        cover_overweight = float(cover_information[4])
        day = [d for d in global_object.Day if d.DayID == cover_day][0]
        shifttype = [s for s in global_object.ShiftType if s.ShiftID == cover_shift][0]
        dst = DayShiftType(NrRequired=cover_req, UnderCoverWeight=cover_underweight, OverCoverWeight=cover_overweight,
                           ShiftType=shifttype, Day=day)

    print("shift type day salvate")

    all_shifttypes = [shifttype for shifttype in global_object.ShiftType]
    #
    for nurse in global_object.Nurse:  # Obținem toți medicii din baza de date
        for nurseday in nurse.NurseDay:  # Obținem toate zilele de lucru ale fiecărui medic
            nds_shifts = [nds.ShiftType for nds in nurseday.NurseDayShiftType]
            nds_shifts_to_create = [s for s in all_shifttypes if s not in nds_shifts]
            for shifttype in nds_shifts_to_create:
                nds = NurseDayShiftType(
                    IsOffRequest=False,
                    IsOnRequest=False,
                    OnRequestWeight=0.0,
                    OffRequestWeight=0.0,
                    Nurse=nurse,
                    Day=nurseday.Day,
                    ShiftType=shifttype,
                    NurseDay=nurseday
                )
    print("\nShiftTypes:")
    for st in global_object.ShiftType:
        print(f"\nShiftType {st.ShiftID}  (Len={st.LengthInMins}m)")
        print("  DayShiftType-uri:")
        for dst in st.DayShiftType:
            print(f"    • Day={dst.Day.DayID}, Required={dst.NrRequired}")
        print("  NurseShiftType-uri:")
        for nst in st.NurseShiftType:
            print(f"    • Nurse={nst.Nurse.EmployeeID}, MaxShifts={nst.MaxShifts}")
        print("  NurseDayShiftType-uri:")
        for ndst in st.NurseDayShiftType:
            print(
                f"    • NurseDay(Nurse={ndst.NurseDay.Nurse.EmployeeID}, Day={ndst.NurseDay.Day.DayID}), OnReq={ndst.IsOnRequest}, OffReq={ndst.IsOffRequest}")

    # for d in global_object.Day:
    #     print(
    #         f"\nDay {d.DayID}  (Next: {getattr(d.Next, 'DayID', None)}, Prev: {getattr(d.Previous, 'DayID', None)})")
    #     print("  NurseDay-uri:")
    #     for nd in d.NurseDay:
    #         assigned = nd.AssignedShift.ShiftID if nd.AssignedShift else "None"
    #         print(
    #             f"    • NurseDay(Nurse={nd.Nurse.EmployeeID}, IsDayOff={nd.IsDayOff}, Assigned={assigned})")
    #         print("      ↳ NurseDayShiftType:")
    #         for ndst in nd.NurseDayShiftType:
    #             print(
    #                 f"         - ShiftType={ndst.ShiftType.ShiftID}, OnReq={ndst.IsOnRequest}, OffReq={ndst.IsOffRequest}")
    #     print("  DayShiftType-uri:")
    # print("\nNurses:")
    # for n in global_object.Nurse:
    #     print(f"\nNurse {n.EmployeeID}  (MinTotal={n.MinTotalMins}, MaxTotal={n.MaxTotalMins})")
    #     print("  NurseShiftType-uri:")
    #     for nst in n.NurseShiftType:
    #         print(f"    • ShiftType={nst.ShiftType.ShiftID}, MaxShifts={nst.MaxShifts}")
    #     print("  NurseDay-uri:")
    #     for nd in n.NurseDay:
    #         assigned = nd.AssignedShift.ShiftID if nd.AssignedShift else "None"
    #         print(f"    • Day={nd.Day.DayID}, IsDayOff={nd.IsDayOff}, Assigned={assigned}")
    # print("\nShiftTypes:")
    # for st in global_object.ShiftType:
    #     print(f"\nShiftType {st.ShiftID}  (Len={st.LengthInMins}m)")
    #     print("  DayShiftType-uri:")
    #     for dst in st.DayShiftType:
    #         print(f"    • Day={dst.Day.DayID}, Required={dst.NrRequired}")
    #     print("  NurseShiftType-uri:")
    #     for nst in st.NurseShiftType:
    #         print(f"    • Nurse={nst.Nurse.EmployeeID}, MaxShifts={nst.MaxShifts}")
    #     print("  NurseDayShiftType-uri:")
    #     for ndst in st.NurseDayShiftType:
    #         print(
    #             f"    • NurseDay(Nurse={ndst.NurseDay.Nurse.EmployeeID}, Day={ndst.NurseDay.Day.DayID}), OnReq={ndst.IsOnRequest}, OffReq={ndst.IsOffRequest}")
    #

    timelimit = dt.timedelta(seconds=120)
    maxiteration = 50
    optimizer = Optimizer(timelimit, maxiteration, 0.7, global_object)
    print("nurse ", optimizer.GlobalObject.Nurse)
    print("days ", optimizer.GlobalObject.Day)
    print("shiftType ", optimizer.GlobalObject.ShiftType)
    scopeselection_random = ScopeSelectionRandom('ScopeSelectionRandom', 15, 15, 10, optimizer,global_object)
    scopeselection_mintotalminutes = ScopeSelectionMinTotalMinutes(
        'ScopeSelectionMinTotalMinutes',
        maxnurse=25,
        maxday=15,
        maxshifttype=10,
        optimizer=optimizer,global_object=global_object
    )

    scopeselection_shiftonreq = ScopeSelectionShiftOnRequest('ScopeSelectionShiftOnRequest', 15, 15, 10, optimizer,global_object)
    scopeselection_shiftoffreq = ScopeSelectionShiftOffRequest('ScopeSelectionShiftOffRequest', 15, 15, 10, optimizer,global_object)
    scopeselection_shiftunder = ScopeSelectionShiftUnderCover('ScopeSelectionShiftUnderCover', 15, 15, 10, optimizer,global_object)
    scopeselection_shiftover = ScopeSelectionShiftOverCover('ScopeSelectionShiftOverCover', 15, 15, 10, optimizer,global_object)

    ga = GeneticScheduler(global_object, optimizer, optimizer.ScopeSelection,
                          population_size=30, generations=25,
                          elite_size=3, crossover_rate=0.7,
                          mutation_rate=0.05, stagnation_limit=10)
    best_chrom = ga.run()
    exec_time = time.perf_counter() - start_time
    # generate_schedule(best_chrom)
    import pandas as pd
    from datetime import datetime, timedelta, time as dt_time



    base_date = datetime(2025, 5, 1)  # ajustează după necesități

    # Salvează evenimentele în baza de date, folosind modelul Event
    #save_schedule_events(best_chrom, base_date, request.user)
    best_chrom.TotalMinutes=global_object.total_minutes()
    best_chrom.TotalMinutesToMin=global_object.total_to_min()
    best_chrom.TotalMinutesToMax=global_object.total_to_max()
    cache_key = f"unsaved_chrom_{request.session.session_key}"
    cache.set(cache_key, best_chrom, timeout=3600)

    base_date = datetime(2025, 5, 1)  # sau din request
    # store KPI results in session for display
    request.session['kpi_results'] = {
        'hard': best_chrom.TotalKPIHard,
        'soft': best_chrom.TotalKPISoft,
        'exec_time': round(exec_time, 2),
    }

    preview_events = []
    for day in sorted(global_object.Day, key=lambda d: d.DayID):
        for nurse in global_object.Nurse:
            nd = next((nd for nd in nurse.NurseDay if nd.Day == day), None)
            if not nd or not nd.AssignedShift:
                continue
            start_t = getattr(nd.AssignedShift, 'DefaultStartTime', dt_time(9, 0))
            start_dt = base_date + timedelta(days=day.DayID - 1)
            start_dt = datetime.combine(start_dt, start_t)
            end_dt = start_dt + timedelta(minutes=nd.AssignedShift.LengthInMins)
            preview_events.append({
                'nurse_id': nurse.EmployeeID,
                'shift_id': nd.AssignedShift.ShiftID,
                'day_id': nd.Day.DayID,
                'title': f"{nurse.EmployeeID}/{nd.AssignedShift.ShiftID}",
                'start': start_dt.isoformat(),
                'end': end_dt.isoformat(),
                'description': f"Program {nurse.EmployeeID} în {start_dt:%Y-%m-%d}"
            })

    # 3) Salvați în sesiune și redirecționați
    request.session['preview_events'] = preview_events
    return redirect('calendarapp:choose_instance')


@login_required
def timetable_without_algorithm(request):
    """Redirect to manual scheduler when generation without algorithm is chosen."""
    return redirect('calendarapp:scheduler')

@login_required
def confirm_schedule(request):
    # 1) Preia lista din sesiune
    preview = request.session.get('preview_events')
    cache_key = f"unsaved_chrom_{request.session.session_key}"
    best_chrom = cache.get(cache_key)
    if not preview:
        return redirect('calendarapp:choose_instance')
    NurseDayShiftType.objects.all().delete()
    NurseDay.objects.all().delete()

    # 2) Salvează obiectul best_chrom (GlobalObject) și calculează KPI‐urile
    best_chrom.save()
    num= re.search(r'\d+', best_chrom.Name).group()
    for d in best_chrom.Day:
        print(f"\nDay {d.DayID}  (Next: {getattr(d.Next, 'DayID', None)}, Prev: {getattr(d.Previous, 'DayID', None)})")
        print("  NurseDay-uri:")
        for nd in d.NurseDay:
            day=Day.objects.get(DayID=int(num+str(d.DayID)))
            nd.Day=day
            # NurseDay.objects.filter(
            #     Day=day,
            #     Nurse=nd.Nurse,
            # ).delete()
            nd.save()
            assigned = nd.AssignedShift.ShiftID if nd.AssignedShift else "None"
            print(
                f"    • NurseDay(Nurse={nd.Nurse.EmployeeID}, IsDayOff={nd.IsDayOff}, Assigned={assigned})")
            print("      ↳ NurseDayShiftType:")
            for ndst in nd.NurseDayShiftType:
                # NurseDayShiftType.objects.filter(
                #     Day=day,
                #     Nurse=ndst.Nurse,
                #     ShiftType=ndst.ShiftType
                # ).delete()

                ndst.Day=day
                ndst.save()
                print(
                    f"         - ShiftType={ndst.ShiftType.ShiftID}, OnReq={ndst.IsOnRequest}, OffReq={ndst.IsOffRequest}")
        print("  DayShiftType-uri:")
    print("\nNurses:")
    for n in best_chrom.Nurse:
        print(f"\nNurse {n.EmployeeID}  (MinTotal={n.MinTotalMins}, MaxTotal={n.MaxTotalMins})")
        print("  NurseShiftType-uri:")
        for nst in n.NurseShiftType:
            print(f"    • ShiftType={nst.ShiftType.ShiftID}, MaxShifts={nst.MaxShifts}")
        print("  NurseDay-uri:")
        for nd in n.NurseDay:
            assigned = nd.AssignedShift.ShiftID if nd.AssignedShift else "None"
            print(f"    • Day={nd.Day.DayID}, IsDayOff={nd.IsDayOff}, Assigned={assigned}")

    kpi_hard = best_chrom.calc_TotalKPIHard(True)
    kpi_soft = best_chrom.calc_TotalKPISoft(True)
    ScheduleGenerationLog.objects.create(
        department=best_chrom,
        user=request.user,
        events_json=preview,
        kpi_hard=kpi_hard,
        kpi_soft=kpi_soft,
    )

    # 3) Salvează fiecare event în DB
    for ev in preview:
        # Presupunem că title-ul are format "NurseID/..." → extragem prefixul dinaintea '/'
        nurse_prefix = ev['title'].split('/')[0]
        nurse=Nurse.objects.get(EmployeeID=ev['nurse_id'])
        shift_type=ShiftType.objects.get(ShiftID=ev['shift_id'])
        day=Day.objects.get(DayID=int(num + str(ev['day_id'])))
        user = User.objects.get(email=f"{nurse_prefix}@example.com")
        nurse_day_shift_type=NurseDayShiftType.objects.get(Nurse=nurse, Day=day, ShiftType=shift_type)
        Event.objects.create(
            user=user,
            title=ev['title'],
            description=ev['description'],
            start_time=ev['start'],
            end_time=ev['end'],
            department=best_chrom,
            is_approved=True,

            NurseDayShiftType=nurse_day_shift_type,

        )

    # 4) Numărul obiectului GlobalObject printr‐un regex
    num = re.search(r'\d+', best_chrom.Name).group()

    for nurse in best_chrom.Nurse:
        nurse.save()


    cache.delete(cache_key)
    del request.session['preview_events']
    return redirect('calendarapp:calendar', global_object_id=request.session['global_object_id'])


@login_required
def cancel_schedule(request):
    # Simplu: șterge preview-ul și înapoi
    request.session.pop('preview_events', None)
    return redirect('calendarapp:choose_instance')

# Apelează funcția după ce algoritmul a generat un orar
from django.http import JsonResponse
from django.shortcuts import get_object_or_404
from django.contrib.auth.decorators import login_required


@login_required
def schedule_log_events(request, log_id):
    """
    Returnează JSON-ul cu evenimentele pentru log-ul specificat.
    """
    log = get_object_or_404(ScheduleGenerationLog, pk=log_id)
    return JsonResponse(log.events_json, safe=False)



from django.contrib.auth.decorators import login_required
from django.http import JsonResponse

@login_required
def get_user_id(request):
    # Accesăm ID-ul utilizatorului care este deja salvat în sesiune
    user_id = request.user.id
    return JsonResponse({'user_id': user_id})

@login_required
def choose_emergency_requests(request):

    # 1. Omiterea de la pasul POST: dacă e GET fără ?date=…
    if request.method == 'GET' and 'date' not in request.GET:
        # Afișez pagina doar cu selector de date
        return render(request, 'calendarapp/choose_emergency_requests.html', {
            'stage': 'select_date',
        })

    # 2. Dacă e GET cu 'date', afișez listele de nurse
    if request.method == 'GET' and 'date' in request.GET:
        date_str = request.GET['date']
        try:
            chosen_date = datetime.strptime(date_str, '%Y-%m-%d').date()
        except ValueError:
            # Data invalidă: re‐afișez formularul de selectare a datei cu mesaj de eroare
            return render(request, 'calendarapp/choose_emergency_requests.html', {
                'stage': 'select_date',
                'date_error': "Formatul datei nu e valid. Folosește YYYY-MM-DD.",
            })

        # 3. Preiau asistenții cu tură în acea zi (NurseShift)\
        uid = request.user.email.split("@")[0]
        print(f"DEBUG: Prefixul email-ului userului: {uid}")
        nurse = get_object_or_404(Nurse, EmployeeID=uid)
        global_object=GlobalObject.objects.get(id=nurse.GlobalObject_id)
        num = re.search(r'\d+', global_object.Name).group()
        print("choosen_day ",chosen_date)
        d=int(str(chosen_date).split("-")[2])
        print("d", d)
        day=int(num+str(d))
        print("ziua aleasa", day)
        nurse_shifts_qs = NurseDayShiftType.objects.filter(Day=day, IsAssigned=1)
        nurses_on_shift = Nurse.objects.filter(
            EmployeeID__in=nurse_shifts_qs.values_list('Nurse_id', flat=True)
        ).distinct()

        # 4. Preiau asistenții cu zi liberă aprobată (DayOffRequest, status='A')
        nurse_dayoff_qs = NurseDayShiftType.objects.filter(Day=day, IsAssigned=0)
        nurses_on_dayoff = Nurse.objects.filter(
            EmployeeID__in=nurse_dayoff_qs.values_list('Nurse_id', flat=True)
        ).distinct()

        # 5. Afișez pagina cu ambele liste
        return render(request, 'calendarapp/choose_emergency_requests.html', {
            'stage': 'show_lists',
            'chosen_date': chosen_date,
            'nurses_on_shift': nurses_on_shift,
            'nurses_on_dayoff': nurses_on_dayoff,
        })

    # 6. Dacă e POST, procesăm selecțiile din formular
    if request.method == 'POST':
        date_str = request.POST.get('date')
        print(date_str)
        try:
            dt = datetime.strptime(date_str, "%B %d, %Y")  # %B coincide cu numele complet al lunii

            # 2) Transformi obiectul date în șir ISO „YYYY-MM-DD”
            chosen_date = dt.strftime("%Y-%m-%d")
        except ValueError:
            # Dacă nu se poate parsa data, redirecționăm la pasul 1
            return redirect('calendarapp:choose_emergency_requests')

        remove_nurses_ids = request.POST.getlist('remove_nurses')
        call_nurses_ids = request.POST.getlist('call_nurses')
        print("DEBUG: POST date:", chosen_date)
        print("DEBUG: remove_nurses_ids:", remove_nurses_ids)
        print("DEBUG: call_nurses_ids:", call_nurses_ids)

        # 7. Creăm EmergencyRequest
        er = EmergencyRequest.objects.create(
            date=chosen_date,
            created_by=request.user
        )
        # 8. Adăugăm în M2M
        if remove_nurses_ids:
            for nid in remove_nurses_ids:
                nurse = get_object_or_404(Nurse, pk=nid)
                er.remove_nurses.add(nurse)
                # Optional: putem marca acea zi ca off prin DayOffRequest cu un status special
                # DayOffRequest.objects.create(nurse=nurse, department=nurse.department, day=chosen_date, status='E')
                print(f"DEBUG: Added to remove_nurses → {nurse}")

        if call_nurses_ids:
            for nid in call_nurses_ids:
                nurse = get_object_or_404(Nurse, pk=nid)
                er.call_nurses.add(nurse)
                # Optional: putem anunța sau crea o cerere de tip „call-in”
                print(f"DEBUG: Added to call_nurses → {nurse}")

        er.save()
        print(f"DEBUG: EmergencyRequest creat pentru data {chosen_date}")

        return redirect('calendarapp:requests_submitted')


