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

from django.contrib.auth.mixins import LoginRequiredMixin
from django.views.generic import ListView
from collections import defaultdict, Counter


class DashboardView(LoginRequiredMixin, ListView):
    login_url = "accounts:signin"
    template_name = "calendarapp/domains_dashboard.html"
    context_object_name = 'domains'


    def get_queryset(self):

        qs=GlobalObject.objects.all()
        print(qs)
        for domain in qs:
            print("am intrat in for")
            # fortez calcul KPI domeniu
            _ = domain.total_to_min
            nurses = Nurse.objects.filter(GlobalObject=domain)
            # pastrez doar pe cele cu deficit de minute
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
from django.conf import settings
import prettytable
import os
# import cplex
# print(cplex.__version__)


os.environ["PATH"] += settings.SOLVER_BINARY

print("PATH:", os.environ["PATH"])
import sys
print("Python exec:", sys.executable)

from django.core.mail import send_mail
from django.conf import settings
from django.contrib.auth.decorators import login_required

from django.views.generic import View

today = datetime.now()
# calculez data de la ziua de luni - vineri
monday = today - timedelta(days=today.weekday())
friday = monday + timedelta(days=4)
current_year = today.year
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
from calendarapp.models.cereri.shift_request import ShiftRequest
def schedule_view(request):
    print("am intrat in post")
    if request.method == "POST":
        try:
            data = json.loads(request.body)
            print("data ",data)
            employee = data.get("nurse")
            date = data.get("day")
            shift_type = data.get("shift_type")
            req_type = data.get("req_type")
            weight = data.get("weight")
            department = data.get("department")
            nurse=Nurse.get(EmployeeID=int(employee))
            global_object=GlobalObject.get(id=nurse.GlobalObject_id)
            if not (employee and date and shift_type):
                return JsonResponse({"error": "Missing required fields."}, status=400)
            num= re.search(r'\d+', global_object.name).group()  # extrage numarul  din numele unitatii
            day =int(str(num+int((date.split("-")[2]).split("T")[0])))
            print ("day",day)
            day =Day.objects.get(DayID=day)
            schedule =  ShiftRequest.objects.create(
                    nurse      = nurse,
                    department = global_object,
                    day        = day,
                    shift_type = shift_type,
                    req_type   = req_type,
                    weight     = int(weight),
                    status     = 'P',
                )
            schedule.save()

            return JsonResponse({"status": "success", "id": schedule.id})
        except Exception as e:
            return JsonResponse({"error": str(e)}, status=500)

    return JsonResponse({"error": "Invalid method"}, status=405)
@login_required
def choose_shift_requests(request):
    # obtin shift-urile posibile
    shift_types = ShiftType.objects.all().order_by('ShiftID')
    shift_types_list = [
        {'id': st.ShiftID, 'name': st.ShiftID}
        for st in shift_types
    ]

    if request.method == 'POST':
        selections = request.POST.getlist('selections')
        nurse = Nurse.objects.get(EmployeeID=request.user.email.split("@")[0])
        department = GlobalObject.objects.first()

        created = 0
        for sel in selections:
            try:
                day_str, shift_id = sel.split('|')
                day_obj = datetime.strptime(day_str, '%Y-%m-%d').date()
                day=str(day_obj).split("-")[2]
                day=Day.objects.get(DayID=day)
                stype = ShiftType.objects.get(ShiftID=shift_id)
                ShiftRequest.objects.create(
                    nurse      = nurse,
                    department = department,
                    day        = day,
                    shift_type = stype,
                    req_type   = 'ON',
                    weight     = 1,
                    status     = 'P',
                )
                created += 1
            except Exception as e:
                print(f"Error processing selection {sel}: {e}")
                continue
        messages.success(request, f"{created} cereri au fost trimise.")
        return redirect('calendarapp:requests_submitted')
    import json
    return render(request, 'calendarapp/choose_shift_requests.html', {
        'shift_types_json': json.dumps(shift_types_list),
    })

@login_required

def choose_dayoff_requests(request):

    uid = request.user.email.split("@")[0]
    print(f"DEBUG: Prefixul email-ului userului: {uid}")
    nurse = get_object_or_404(Nurse, EmployeeID=uid)
    print(f"DEBUG: Nurse gasita: {nurse} (ID nurse: {nurse.EmployeeID})")


    pending_qs = DayOffRequest.objects.filter(nurse=nurse, status='P')
    pending_days = list(pending_qs.values_list('day_id', flat=True))
    print(f"DEBUG: Pending DayOffRequest pentru nurse {nurse}: {pending_days}")

    approved_qs = DayOffRequest.objects.filter(nurse=nurse, status='A')
    approved_days = list(approved_qs.values_list('day_id', flat=True))
    print(f"DEBUG: Approved DayOffRequest pentru nurse {nurse}: {approved_days}")

    used_days = set(pending_days) | set(approved_days)
    print(f"DEBUG: used_days (pending ∪ approved): {used_days}")


    qs = DayOffOption.objects.filter(nurse=nurse)
    all_option_ids = list(qs.values_list('id', flat=True))
    all_days_ids = list(qs.values_list('day_id', flat=True))
    print(f"DEBUG: Count total DayOffOption pentru nurse {nurse}: {qs.count()}")
    print(f"DEBUG: DayOffOption IDs: {all_option_ids}")
    print(f"DEBUG: DayOffOption day_id list: {all_days_ids}")


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
    global global_object,shiftoff_req_input_start,shiftoff_req_input_end,cover_req_input_start,cover_req_input_end


    with open(file_path, 'r') as f:
        raw_data = f.readlines()

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

    for shifttype in raw_data[shifttype_input_start:shifttype_input_end]:
        shifttype_information = shifttype.split(',')
        shift_id = shifttype_information[0]
        length_in_mins = int(shifttype_information[1])
        forbidden_shifts = shifttype_information[2].strip().split('|')
        forbidden_shifts = [i for i in forbidden_shifts if i]

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
            nr = NurseDay(IsDayOff=False, Nurse=nurse, Day=day)
            nr.save()

    print("relatiile de ziua sunt create")
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

        dst = DayShiftType(NrRequired=cover_req, UnderCoverWeight=cover_underweight, OverCoverWeight=cover_overweight,
                           ShiftType=shifttype, Day=day)
        dst.save()

    print("shift type day salvate")

    all_shifttypes = [shifttype for shifttype in global_object.ShiftType]

    for nurse in global_object.Nurse:
        for nurseday in nurse.NurseDay:
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
                #nds.save()
    return global_object
@login_required
def instance_list(request):
    base = settings.INSTANCE_DIR
    files = [f for f in os.listdir(base) if f.endswith('.txt')]
    instances = []
    for fn in files:
        full_path = os.path.normpath(os.path.join(base, fn))
        name, _ext = os.path.splitext(fn)
        num = name.replace('Instance', '')
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
    gos = request.session.get('global_object_ids', [])
    if go.id not in gos:
        gos.append(go.id)
        request.session['global_object_ids'] = gos

    return render(request, 'calendarapp/instance_detail.html', {
        'file_path': file_path,
        'data': go,
    })

from django.views.decorators.http import require_POST

@login_required
@require_POST
def select_instance(request):
    go_id = request.POST.get('unitate')
    gos = request.session.get('global_object_ids', [])
    if not go_id or int(go_id) not in gos:
        raise Http404("Setul de date nu există sau nu ai acces la el.")
    request.session['global_object_id'] = int(go_id)
    req_ids = request.POST.get('request_ids', '')
    selected_req_ids = [int(x) for x in req_ids.split(',') if x.strip()]
    # salvez în sesiune
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
    # adaug in sesiune
    request.session['global_object_id'] = go.id
    # cate din fiecare
    nurse_count     = Nurse.objects.filter(GlobalObject=go).count()
    shifttype_count = ShiftType.objects.filter(GlobalObject=go).count()
    last_log = ScheduleGenerationLog.objects.filter(department=go) \
                  .order_by('-generated_at') \
                  .first()
    last_gen = last_log.generated_at.strftime('%d.%m.%Y') if last_log else '–––'
    # calculez KPI
    total_minutes   = go.TotalMinutes
    to_min          = go.TotalMinutesToMin
    to_max          = go.TotalMinutesToMax
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

    # periau doar GlobalObjecturile relevante
    all_go_ids = list(GlobalObject.objects.values_list('id', flat=True))
    # daca am id nou il adaug - pentru requesturi
    for _id in all_go_ids:
        if _id not in go_ids:
            go_ids.append(_id)
    request.session['global_object_ids'] = go_ids
    gos = GlobalObject.objects.filter(id__in=go_ids)
    gos_with_number = []
    for go in gos:
        match = re.search(r'(\d+)', go.Name)
        number = match.group(1) if match else '-'
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
            status='P'  # doar cele in asteptare
        ).select_related('nurse', 'day', 'shift_type')

    kpi_results = request.session.pop('kpi_results', None)
    return render(request, 'calendarapp/choose_instance.html', {
        'global_objects': gos_with_number,
        'generate_logs': generate_logs,
        "shift_requests": shift_reqs,
        'kpi_results': kpi_results,
    })


@login_required
def timetable(request):
    #citesc_fisier()
    #trebuie citit fisier intai
    print("a fost apelat timetable ")
    start_time = time.perf_counter()
    picked = request.session.pop('picked_shift_reqs', [])
    if len(picked)>0:
        NurseDayShiftType.objects.all().delete()
        NurseDay.objects.all().delete()
    go_ids = request.session.get('global_object_ids', [])
    active_go = request.session.get('global_object_id')
    # setez prima unitate medicala daca nu am niciuna activa
    if not active_go:
        if len(go_ids) == 1:
            active_go = go_ids[0]
            request.session['global_object_id'] = active_go
        else:
            return redirect('calendarapp:choose_instance')

    global_object = load_global_object(active_go)
    global_object_id=global_object.id
    global_object_name=global_object.Name

    with open(os.path.join(settings.INSTANCE_DIR, global_object_name), 'r') as f:
        raw_data = f.readlines()

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
    for nurse in global_object.Nurse:
        for nurseday in nurse.NurseDay:
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



    base_date = datetime(2025, 7, 1)

    #save_schedule_events(best_chrom, base_date, request.user)
    best_chrom.TotalMinutes=global_object.total_minutes()
    best_chrom.TotalMinutesToMin=global_object.total_to_min()
    best_chrom.TotalMinutesToMax=global_object.total_to_max()
    cache_key = f"unsaved_chrom_{request.session.session_key}"
    cache.set(cache_key, best_chrom, timeout=3600)

    base_date = datetime(2025, 7, 1)
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
    # print("preview_events", preview_events)
    request.session['preview_events'] = preview_events
    request.session['active_go']=global_object_id;
    request.session.modified = True
    if request.session.get('preview_events'):
        print ("Preview events already in session, clearing old ones.")
    return redirect('calendarapp:choose_instance')


@login_required
def timetable_without_algorithm(request):
    # citesc_fisier()
    # trebuie citit fisier intai
    print("a fost apelat timetable ")
    start_time = time.perf_counter()
    picked = request.session.pop('picked_shift_reqs', [])
    if len(picked) > 0:
        NurseDayShiftType.objects.all().delete()
        NurseDay.objects.all().delete()
    go_ids = request.session.get('global_object_ids', [])
    active_go = request.session.get('global_object_id')
    # setez prima unitate medicala daca nu am niciuna activa
    if not active_go:
        if len(go_ids) == 1:
            active_go = go_ids[0]
            request.session['global_object_id'] = active_go
        else:
            return redirect('calendarapp:choose_instance')

    global_object = load_global_object(active_go)
    global_object_id = global_object.id
    global_object_name = global_object.Name

    with open(os.path.join(settings.INSTANCE_DIR, global_object_name), 'r') as f:
        raw_data = f.readlines()

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
    nr = None
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
            nurse.MinTotalMins = 0
        else:
            nurse.MinTotalMins = nurse.TotalMins - nurse.MinTotalMins
            # aici mai trebuie sa scad si din maxim
        print("nurse nou", nurse.EmployeeID)
        # daca nurse e din alt domeniu il adaug fictiv in acest domeniu ca sa generez orarul
        if req.department_id != nurse.GlobalObject_id:
            print(" e din alt apartament ")
            # nurse.GlobalObject_id = req.department_id
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
                    nur = NurseShiftType(Nurse=nurse, ShiftType=nr, MaxShifts=0)


        else:
            print("nu e din alt apartament")
            # daca e in acelasi domeniu atunci ii adaug shiftul
            nr = []
            for n in global_object.Nurse:
                if n.EmployeeID == nurse.EmployeeID:
                    print("sunt in nurse ")
                    for nd in n.NurseDay:
                        print(f"  • DayID: {nd.Day.DayID}")
                        print("req.day", req.day.DayID)
                        if int(nd.Day.DayID) == int(str(req.day.DayID)[1:]):
                            nr = nd
            nd = NurseDayShiftType(IsOnRequest=True, IsOffRequest=False, OnRequestWeight=req.weight,
                                   OffRequestWeight=0.0, Nurse=nurse, Day=req.day, ShiftType=req.shift_type,
                                   NurseDay=nr)

    print("relatiile de ziua sunt create")
    print("nurse day salvate")
    dayoff_reqs = DayOffRequest.objects.filter(
        department=global_object,
        status='A',
        from_file=True
    )

    for req in dayoff_reqs:
        # print(f"dayyyyy {num + str(req.day_id)}")
        nurse = next(n for n in global_object.Nurse if n.EmployeeID == req.nurse_id)
        day = [d for d in global_object.Day if d.DayID == int(req.day_id[1:])][0]
        print(f"day {day}")
        nurseday = [nd for nd in nurse.NurseDay if nd.Day == day][0]
        nurseday.IsDayOff = True
        # nurseday.save()
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
        nurseday = []
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
        # nds.save()

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
    for nurse in global_object.Nurse:
        for nurseday in nurse.NurseDay:
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

    while optimizer.get_continue():
        # Select Scope selection
        selected_scope_selection = optimizer.select_scope_selection()
        print(optimizer.CurrentIteration, selected_scope_selection.Name)

        # Get OptScope
        days, nurses, shifttypes = selected_scope_selection.get_opt_scope()
        # print("iteratie ",optimizer.CurrentIteration, " nurses ", nurses)
        # print("iteratie ",optimizer.CurrentIteration, " days ", days)
        # print("iteratie ",optimizer.CurrentIteration, " shiftTypes ", shifttypes)
        global_object.reset_isinsideoptscope()
        global_object.set_isinsideoptscope(nurses, days, shifttypes)
        # print([d.DayID for d in days])
        # print([n.EmployeeID for n in nurses])
        # print([s.ShiftID for s in shifttypes])

        # creare OptimizerIteration
        optimizer_iteration = OptimizerIteration(optimizer.CurrentIteration, time.time(), optimizer,
                                                 selected_scope_selection,global_object)

        # creare obiecte OptScope
        optimizer_iteration.create_optscope_objects(nurses, days, shifttypes)

        # Optimize OptScope
        is_debug = False
        current_dt = dt.datetime.now().strftime('%d%m%Y_%H%M%S')
        filename = str(optimizer_iteration.IterationNr) + '_' + current_dt

        model = optimizer_iteration.initialize_mip()
        instance, results = optimizer_iteration.solve_mip(model, is_debug, filename)
        optimizer_iteration.handle_result(model, instance, results, is_debug, filename, True)

        # updatez atributele
        optimizer.CurrentIteration = optimizer.CurrentIteration + 1
        print(optimizer.CurrentIteration)

    print('\nSelector statistics')
    for ss in optimizer.ScopeSelection:
        optimizer_iterations = [oi.IterationNr for oi in ss.OptimizerIteration]
        average_solve_duration = 0.0
        if len(optimizer_iterations) > 0:
            average_solve_duration = sum([oi.DurationSolveInSeconds for oi in ss.OptimizerIteration]) / len(
                optimizer_iterations)
        print(ss.Name, 'nr_selected', len(optimizer_iterations), 'iterations:', optimizer_iterations,
              average_solve_duration)

    print('\nOptimizer iteration statistics')
    print('#Feasible', len([oi for oi in optimizer.OptimizerIteration if oi.IsFeasible == True]))
    print('#Infeasible', len([oi for oi in optimizer.OptimizerIteration if oi.IsFeasible == False]))
    print('#Rollback', len([oi for oi in optimizer.OptimizerIteration if oi.IsRollback == True]))
    print('Rollback:', [oi.IterationNr for oi in optimizer.OptimizerIteration if oi.IsRollback == True])
    print('Hard KPI', [oi.TotalKPIHard for oi in optimizer.OptimizerIteration])
    print('Soft KPI', [oi.TotalKPISoft for oi in optimizer.OptimizerIteration])
    print('Time elapsed', [oi.TimeElapsedInSeconds for oi in optimizer.OptimizerIteration])

    print('\nOpt scope statistics')
    for n in global_object.Nurse:
        oi = [optscope_n for optscope_n in n.OptScopeNurse]
        print('nurse', n.EmployeeID, len(oi))
    for d in global_object.Day:
        oi = [optscope_d for optscope_d in d.OptScopeDay]
        print('day', d.DayID, len(oi))
    for s in global_object.ShiftType:
        oi = [optscope_s for optscope_s in s.OptScopeShiftType]
        print('shifttype', s.ShiftID, len(oi))
    for n in global_object.Nurse:
        for nd in n.NurseDay:
            for nds in nd.NurseDayShiftType:
                print(n.EmployeeID, nd.Day.DayID, nds.ShiftType.ShiftID, nds.NrSelectedInOptScope)

    selected_scope_selection = optimizer.select_scope_selection()
    # selected_scope_selection = [ss for ss in optimizer.ScopeSelection if isinstance(ss, ScopeSelectionShiftUnderCover)][0]
    print(optimizer.CurrentIteration, selected_scope_selection.Name)

    #  OptScope
    days, nurses, shifttypes = selected_scope_selection.get_opt_scope()
    global_object.reset_isinsideoptscope()
    global_object.set_isinsideoptscope(nurses, days, shifttypes)
    print([d.DayID for d in days])
    print([n.EmployeeID for n in nurses])
    print([s.ShiftID for s in shifttypes])

    # creez  objecthandle OptimizerIteration
    optimizer_iteration = OptimizerIteration(optimizer.CurrentIteration, time.time(), optimizer,
                                             selected_scope_selection,global_object)

    # creez obiecte OptScope
    optimizer_iteration.create_optscope_objects(nurses, days, shifttypes)

    # Optimize OptScope
    is_debug = False
    current_dt = dt.datetime.now().strftime('%d%m%Y_%H%M%S')
    filename = str(optimizer_iteration.IterationNr) + '_' + current_dt

    model = optimizer_iteration.initialize_mip()
    instance, results = optimizer_iteration.solve_mip(model, is_debug, filename)
    optimizer_iteration.handle_result(model, instance, results, is_debug, filename, True)

    # updatez atribute
    optimizer.CurrentIteration = optimizer.CurrentIteration + 1

    print('\nOpt scope statistics')
    for n in global_object.Nurse:
        oi = [optscope_n for optscope_n in n.OptScopeNurse]
        print('nurse', n.EmployeeID, len(oi))
    for d in global_object.Day:
        oi = [optscope_d for optscope_d in d.OptScopeDay]
        print('day', d.DayID, len(oi))
    for s in global_object.ShiftType:
        oi = [optscope_s for optscope_s in s.OptScopeShiftType]
        print('shifttype', s.ShiftID, len(oi))
    for n in global_object.Nurse:
        for nd in n.NurseDay:
            for nds in nd.NurseDayShiftType:
                print(n.EmployeeID, nd.Day.DayID, nds.ShiftType.ShiftID, nds.NrSelectedInOptScope)

    optimizer.plan_up_to_iteration(1)
    sorted_nurses = sorted(global_object.Nurse, key=lambda x: x.EmployeeID, reverse=False)
    sorted_days = sorted(global_object.Day, key=lambda x: x.DayID, reverse=False)
    for n in sorted_nurses:
        for d in global_object.Day:
            nurseday = [nd for nd in n.NurseDay if nd.Day == d][0]
            assigned_shifttype = nurseday.AssignedShift
            assigned_shifttype_id = ''
            if assigned_shifttype != []:
                assigned_shifttype_id = assigned_shifttype.ShiftID
            # print(assigned_shifttype_id, end='')
            print(n.EmployeeID, d.DayID, assigned_shifttype_id, end='')
            if d != sorted_days[-1]:
                print('\t', end='')
        print('\n', end='')

    # Print KPI
    print('=====')
    print(global_object.calc_TotalKPIHard(True))
    print(global_object.calc_TotalKPISoft(True))
    nurses = [n for n in global_object.Nurse]
    days = [d for d in global_object.Day]
    shifttypes = [s for s in global_object.ShiftType]
    global_object.reset_isinsideoptscope()
    global_object.set_isinsideoptscope(nurses, days, shifttypes)

    # creare OptimizerIteration
    scope_selection = [ss for ss in optimizer.ScopeSelection][0]
    optimizer_iteration = OptimizerIteration(99, time.time(), optimizer, scope_selection,global_object)

    # creare obiecte OptScope
    optimizer_iteration.create_optscope_objects(nurses, days, shifttypes)

    print(type(optimizer_iteration.OptScopeNurse), [n.Nurse.EmployeeID for n in optimizer_iteration.OptScopeNurse])

    # Optimize OptScope
    is_debug = True
    current_dt = dt.datetime.now().strftime('%d%m%Y_%H%M%S')
    filename = str(optimizer_iteration.IterationNr) + '_' + current_dt

    model = optimizer_iteration.initialize_mip()
    instance, results = optimizer_iteration.solve_mip(model, is_debug, filename)
    optimizer_iteration.handle_result(model, instance, results, is_debug, filename, False)
    import pandas as pd
    from datetime import datetime, timedelta, time as dt_time
    import pandas as pd
    from datetime import datetime, timedelta, time as dt_time

    base_date = datetime(2025, 7, 1)

    # save_schedule_events(best_chrom, base_date, request.user)
    global_object.TotalMinutes = global_object.total_minutes()
    global_object.TotalMinutesToMin = global_object.total_to_min()
    global_object.TotalMinutesToMax = global_object.total_to_max()
    cache_key = f"unsaved_chrom_{request.session.session_key}"
    # cache.set(cache_key, global_object, timeout=100000)

    base_date = datetime(2025, 7, 1)
    request.session['kpi_results'] = {
        'hard': global_object.TotalKPIHard,
        'soft': global_object.TotalKPISoft,
        # 'exec_time': round(exec_time, 2),
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
    # print("preview_events", preview_events)
    request.session['preview_events'] = preview_events
    request.session['active_go'] = global_object_id;
    request.session.modified = True
    if request.session.get('preview_events'):
        print("Preview events already in session, clearing old ones.")
    return redirect('calendarapp:choose_instance')

@login_required
def confirm_schedule(request):
    print("AM INTRAT ÎN confirm_schedule")
    preview = request.session.get('preview_events')
    print("Preview events:", preview)
    cache_key = f"unsaved_chrom_{request.session.session_key}"
    print("Cache key:", cache_key)
    active_go = request.session.get('active_go')
    global_obj = GlobalObject.objects.get(id=active_go)
    print("active_go:", active_go)
    best_chrom = cache.get(cache_key)
    if not preview:
        return redirect('calendarapp:choose_instance')
    NurseDay.objects.filter(
        GlobalObject=active_go
    ).delete()
    count, info =NurseDayShiftType.objects.filter(
        GlobalObject=active_go
    ).delete()
    print(count,info)

    best_chrom.save()
    print("am salvat best_chrom")
    num= re.search(r'\d+', best_chrom.Name).group()
    print (num)
    for d in best_chrom.Day:
        print(f"\nDay {d.DayID}  (Next: {getattr(d.Next, 'DayID', None)}, Prev: {getattr(d.Previous, 'DayID', None)})")
        print("  NurseDay-uri:")
        for nd in d.NurseDay:
            print("nd ", nd)
            day=Day.objects.get(DayID=int(num+str(d.DayID)))
            print("day ", day)
            nd.GlobalObject=global_obj
            nd.Day=day
            # NurseDay.objects.filter(
            #     Day=day,
            #     Nurse=nd.Nurse
            # ).delete()
            # print("am sters")
            nd.save()
            assigned = nd.AssignedShift.ShiftID if nd.AssignedShift else "None"
            print(
                f"    • NurseDay(Nurse={nd.Nurse.EmployeeID}, IsDayOff={nd.IsDayOff}, Assigned={assigned})")
            print("      ↳ NurseDayShiftType:")
            for ndst in nd.NurseDayShiftType:
                # NurseDayShiftType.objects.filter(
                #     Day=day,
                #     Nurse=ndst.Nurse,
                #     ShiftType=ndst.ShiftType,
                #     GlobalObject=active_go
                # ).delete()

                ndst.Day=day

                ndst.GlobalObject=global_obj
                ndst.save()
                print(
                    f"         - ShiftType={ndst.ShiftType.ShiftID}, OnReq={ndst.IsOnRequest}, OffReq={ndst.IsOffRequest}")
        print("  DayShiftType-uri:")
    print("\nNurses:")
    # for n in best_chrom.Nurse:
    #     # print(f"\nNurse {n.EmployeeID}  (MinTotal={n.MinTotalMins}, MaxTotal={n.MaxTotalMins})")
    #     print("  NurseShiftType-uri:")
    #     for nst in n.NurseShiftType:
    #         print(f"    • ShiftType={nst.ShiftType.ShiftID}, MaxShifts={nst.MaxShifts}")
    #     print("  NurseDay-uri:")
    #     for nd in n.NurseDay:
    #         assigned = nd.AssignedShift.ShiftID if nd.AssignedShift else "None"
    #         print(f"    • Day={nd.Day.DayID}, IsDayOff={nd.IsDayOff}, Assigned={assigned}")

    kpi_hard = best_chrom.calc_TotalKPIHard(True)
    kpi_soft = best_chrom.calc_TotalKPISoft(True)
    ScheduleGenerationLog.objects.create(
        department=best_chrom,
        user=request.user,
        events_json=preview,
        kpi_hard=kpi_hard,
        kpi_soft=kpi_soft,
    )

    for ev in preview:
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


    num = re.search(r'\d+', best_chrom.Name).group()

    for nurse in best_chrom.Nurse:
        nurse.save()


    cache.delete(cache_key)
    del request.session['preview_events']
    return redirect('calendarapp:calendar', global_object_id=active_go)


@login_required
def cancel_schedule(request):

    request.session.pop('preview_events', None)
    return redirect('calendarapp:choose_instance')


from django.http import JsonResponse
from django.shortcuts import get_object_or_404
from django.contrib.auth.decorators import login_required


@login_required
def schedule_log_events(request, log_id):
    log = get_object_or_404(ScheduleGenerationLog, pk=log_id)
    print("log ",log.events_json)
    return JsonResponse(log.events_json, safe=False)



from django.contrib.auth.decorators import login_required
from django.http import JsonResponse

@login_required
def get_user_id(request):

    user_id = request.user.id
    return JsonResponse({'user_id': user_id})

@login_required
def choose_emergency_requests(request):


    if request.method == 'GET' and 'date' not in request.GET:

        return render(request, 'calendarapp/choose_emergency_requests.html', {
            'stage': 'select_date',
        })

    if request.method == 'GET' and 'date' in request.GET:
        date_str = request.GET['date']
        try:
            chosen_date = datetime.strptime(date_str, '%Y-%m-%d').date()
        except ValueError:
            return render(request, 'calendarapp/choose_emergency_requests.html', {
                'stage': 'select_date',
                'date_error': "Formatul datei nu e valid. Folosește YYYY-MM-DD.",
            })

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

        nurse_dayoff_qs = NurseDayShiftType.objects.filter(Day=day, IsAssigned=0)
        nurses_on_dayoff = Nurse.objects.filter(
            EmployeeID__in=nurse_dayoff_qs.values_list('Nurse_id', flat=True)
        ).distinct()


        return render(request, 'calendarapp/choose_emergency_requests.html', {
            'stage': 'show_lists',
            'chosen_date': chosen_date,
            'nurses_on_shift': nurses_on_shift,
            'nurses_on_dayoff': nurses_on_dayoff,
        })


    if request.method == 'POST':
        date_str = request.POST.get('date')
        print(date_str)
        try:
            dt = datetime.strptime(date_str, "%B %d, %Y")

            chosen_date = dt.strftime("%Y-%m-%d")
        except ValueError:
            return redirect('calendarapp:choose_emergency_requests')

        remove_nurses_ids = request.POST.getlist('remove_nurses')
        call_nurses_ids = request.POST.getlist('call_nurses')
        print("DEBUG: POST date:", chosen_date)
        print("DEBUG: remove_nurses_ids:", remove_nurses_ids)
        print("DEBUG: call_nurses_ids:", call_nurses_ids)

        #  creez EmergencyRequest
        er = EmergencyRequest.objects.create(
            date=chosen_date,
            created_by=request.user
        )
        # ma uit daca nurse-uri de sters
        if remove_nurses_ids:
            for nid in remove_nurses_ids:
                nurse = get_object_or_404(Nurse, pk=nid)
                er.remove_nurses.add(nurse)

        if call_nurses_ids:
            for nid in call_nurses_ids:
                nurse = get_object_or_404(Nurse, pk=nid)
                er.call_nurses.add(nurse)
        er.save()
        print(f"DEBUG: EmergencyRequest creat pentru data {chosen_date}")

        return redirect('calendarapp:requests_submitted')


