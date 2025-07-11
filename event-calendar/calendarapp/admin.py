import re
# from django.db.models.fields.related import RelatedObjectDoesNotExist
from django.contrib import admin
from calendarapp import models
from django.contrib import admin
from django.apps import apps
from django.contrib.admin.sites import AlreadyRegistered
from django.contrib.auth.models import Group, Permission, User
from django.core.checks import messages
from django.shortcuts import get_object_or_404, redirect
from django.urls import reverse, path
from django.utils.html import format_html
from django.http import HttpResponse
# from django.db.models.fields.related_descriptors import RelatedObjectDoesNotExist
import csv
from django.db.models.base import ModelState
from django import forms
from calendarapp.models.global_object import GlobalObject
from calendarapp.models.shift_type import ShiftType

from channels.layers import get_channel_layer
from asgiref.sync import async_to_sync

admin.site.unregister(Group)

@admin.register(models.Event)
class EventAdmin(admin.ModelAdmin):
    # change_list_template = "admin/calendarapp/event/change_list.html"

    model = models.Event
    list_display = [
        "id",
        "title",
        "user",
        "is_active",
        "is_deleted",
        "is_approved",
        "created_at",
        "updated_at",
    ]
    list_filter = ["is_active", "is_deleted", "is_approved","department_id"]
    search_fields = ["title"]
    actions = ["approve_events", "export_events_csv"]

    def get_queryset(self, request):
        """arata doar unnaproved events """
        qs = super().get_queryset(request)
        if request.user.is_superuser:
            return qs.filter(is_approved=False)
        return qs

    def approve_events(self, request, queryset):
        """approve events """
        queryset.update(is_approved=True)
        self.message_user(request, "Selected events have been approved.")
    approve_events.short_description = "Approve selected events"

    def export_events_csv(self, request, queryset):
        """sa exporte in cvs"""
        field_names = [
            "id",
            "title",
            "user",
            "start_time",
            "end_time",
            "department_id",
            "is_approved",
        ]
        response = HttpResponse(content_type="text/csv")
        response["Content-Disposition"] = "attachment; filename=events.csv"
        writer = csv.writer(response)
        writer.writerow(field_names)
        for event in queryset:
            writer.writerow([getattr(event, f) for f in field_names])
        return response
    export_events_csv.short_description = "Export selected events to CSV"


from django.contrib import admin
from calendarapp.models.coverage_requirements import CoverageRequirement
from calendarapp.models.sanitation_task import SanitationTask

@admin.register(CoverageRequirement)
class CoverageRequirementAdmin(admin.ModelAdmin):
    list_display  = ('day', 'shift_id', 'requirement', 'weight_under', 'weight_over', 'department')
    list_editable = ('requirement', 'weight_under', 'weight_over')
    list_per_page = 14
    ordering      = ('day',)


@admin.register(SanitationTask)
class SanitationTaskAdmin(admin.ModelAdmin):
    list_display = (
        'title', 'department', 'nurse', 'start_time', 'end_time', 'completed'
    )
    list_filter = ('department', 'completed')
    search_fields = ('title', 'location')
from django.contrib import admin

from django.contrib import admin
from django.utils.translation import gettext_lazy as _
from calendarapp.models.day_shift_type import DayShiftType
from calendarapp.models.global_object import GlobalObject
from calendarapp.models.cereri.shift_request import ShiftRequest
from calendarapp.models.cereri.dayoff_request import DayOffRequest
from calendarapp.models.nurse_day_shift_type import NurseDayShiftType

class BaseGlobalObjectFilter(admin.SimpleListFilter):
    """template reutilizabil pentru toate obiectele :`GlobalObject`."""

    title = _('Global Object')
    parameter_name = 'global_object'

    def lookups(self, request, model_admin):
        return [
            (go.id, f"{go.id} – {go.Name}")
            for go in GlobalObject.objects.all()
        ]

    field_path = None

    def queryset(self, request, queryset):
        if self.value() and self.field_path:
            return queryset.filter(**{f"{self.field_path}_id": self.value()})
        return queryset


class DayShiftTypeFilter(BaseGlobalObjectFilter):
    field_path = 'Day__GlobalObject'


class DayOffRequestFilter(BaseGlobalObjectFilter):
    field_path = 'get_department_name'


class NurseFilter(BaseGlobalObjectFilter):
    field_path = 'GlobalObject'

# # Monkey-patch ShiftType __init__ to avoid errors when GlobalObject is missing in admin add view
# _orig_shift_init = ShiftType.__init__
# def _safe_shift_init(self, *args, **kwargs):
#     try:
#         _orig_shift_init(self, *args, **kwargs)
#     except RelatedObjectDoesNotExist:
#         # Skip relation setup when GlobalObject is not yet assigned
#         pass
# ShiftType.__init__ = _safe_shift_init
# 1) Delegate __init__ to the base Model so you don't need to explicitly set up lists there
ShiftType.__init__ = lambda self, *args, **kwargs: Model.__init__(self, *args, **kwargs)

# 2) On first access, create empty lists for each of your custom-relations
def _shifttype_getattr(self, name):
    if name in (
        "OptScopeShiftType",
        "NurseDayShiftType",
        "DayShiftType",
        "NurseShiftType",
        "AssignedNurseDay",
    ):
        lst = []
        object.__setattr__(self, name, lst)
        return lst
    # Fallback to the normal attribute lookup
    return object.__getattribute__(self, name)

ShiftType.__getattr__ = _shifttype_getattr


@admin.register(ShiftType)
class ShiftTypeAdmin(admin.ModelAdmin):
    # expose exactly the fields you want, with GlobalObject restored as a dropdown
    fields = (
        "ShiftID",
        "GlobalObject",
        "LengthInMins",
        "ForbiddenShifts",
    )
    autocomplete_fields = ["GlobalObject"]
    list_display = ('ShiftID', 'LengthInMins', 'ForbiddenShifts', 'get_department_name')

    def get_changeform_initial_data(self, request):
        # pre-select the first GlobalObject if one exists
        go = GlobalObject.objects.first()
        return {"GlobalObject": go.pk} if go else {}

    def save_model(self, request, obj, form, change):
        # ensure you don't violate the NOT NULL on GlobalObject_id
        if obj.GlobalObject_id is None:
            obj.GlobalObject = GlobalObject.objects.first()
        super().save_model(request, obj, form, change)


    @admin.display(description='Departament')
    def get_department_name(self, obj):
        return "Unitate " + re.search(r'\d+', obj.GlobalObject.Name.split('.')[0]).group()

    def get_queryset(self, request):
        """Override to filter by GlobalObject."""
        qs = super().get_queryset(request)
        return qs.filter(GlobalObject__isnull=False)
@admin.register(DayShiftType)
class DayShiftTypeAdmin(admin.ModelAdmin):
    list_display  = ('Day', 'ShiftType', 'NrRequired', 'UnderCoverWeight', 'OverCoverWeight')
    list_editable = ('NrRequired', 'UnderCoverWeight', 'OverCoverWeight')
    list_filter   = (DayShiftTypeFilter, )
    ordering      = ('Day__DayID', 'ShiftType__ShiftID')
import re
from datetime import datetime, timedelta
from datetime import date, timedelta
@admin.register(ShiftRequest)
class ShiftRequestAdmin(admin.ModelAdmin):
    change_list_template = "admin/calendarapp/shift_request/change_list.html"
    list_display = ('nurse','get_department_name',
        'get_day_repr','get_shift_type','req_type','weight','status')
    list_display_links = ('nurse',)

    list_editable = ('status',)
    list_filter  = ('department','status','req_type')
    actions      = ('approve_requests','deny_requests',)

    @admin.display(description='Departament')
    def get_department_name(self, obj):
        return "Unitate "+re.search(r'\d+', obj.department.Name.split('.')[0]).group()

    @admin.display(description='Zi')
    def get_day_repr(self, obj):

        # start = date(2025, 7, 1)
        # # 2) converteşti DayID la int
        # try:
        #     offset = int(obj.day.DayID[1:])
        # except (ValueError, TypeError):
        #     offset = 0  # fallback
        # # 3) adaugi offset-ul
        # actual = start + timedelta(days=offset)
        # # 4) formatezi string-ul cum vrei
        # return actual.strftime('%d.%m.%Y')
        return obj.day.DayID[1:]
    @admin.display(description='Tipul de schimb')
    def get_shift_type(self, obj):
        return "      " + obj.shift_type.ShiftID+"     "

    @admin.action(description="Approve selected")
    def approve_requests(self, request, queryset):
        for obj in queryset:
            print(f">>> SELECTAT: {obj}, STATUS: {obj.status}")
        raise Exception("TEST FINAL — FUNCȚIONEAZĂ")

    @admin.action(description="Deny selected")
    def deny_requests(self, request, queryset):
        updated = queryset.filter(status='P').update(status='D')
        self.message_user(request, f"{updated} cereri respinse.")

    class Media:
        js = ('/static/js/shiftrequest_admin.js',)



@admin.register(NurseDayShiftType)
class NurseDayShiftTypeAdmin(admin.ModelAdmin):
    # change_list_template = "admin/calendarapp/shift_request/change_list.html"
    list_display = ('Nurse','get_department_name',
        'get_day_repr','get_shift_type','NurseDay','IsAssigned','IsOnRequest','IsOffRequest')
    list_display_links = ('Nurse',)

    # list_editable = ('status',)
    # list_filter  = ('Department',)
    actions      = ('approve_requests','deny_requests',)

    @admin.display(description='Departament')
    def get_department_name(self, obj):
        return "Unitate "+re.search(r'\d+', obj.GlobalObject.Name.split('.')[0]).group()

    @admin.display(description='Zi')
    def get_day_repr(self, obj):

        start = date(2025, 7, 1)

        try:
            offset = int(obj.Day.DayID[1:])
        except (ValueError, TypeError):
            offset = 0  # fallback
        # 3) adaugi offset-ul
        actual = start + timedelta(days=offset)
        # 4) formatezi string-ul cum vrei
        return actual.strftime('%d.%m.%Y')
    @admin.display(description='Tipul de schimb')
    def get_shift_type(self, obj):
        return "      " + obj.ShiftType.ShiftID+"     "

    @admin.action(description="Approve selected")
    def approve_requests(self, request, queryset):
        for obj in queryset:
            print(f">>> SELECTAT: {obj}, STATUS: {obj.status}")
        raise Exception("TEST FINAL — FUNCȚIONEAZĂ")

    @admin.action(description="Deny selected")
    def deny_requests(self, request, queryset):
        updated = queryset.filter(status='P').update(status='D')
        self.message_user(request, f"{updated} cereri respinse.")

    class Media:
        js = ('/static/js/shiftrequest_admin.js',)
@admin.register(DayOffRequest)
class DayOffRequestAdmin(admin.ModelAdmin):
    list_display  = ('nurse','get_department_name','get_day_repr','status','from_file')
    list_editable = ('status',)
    list_filter   = (DayOffRequestFilter,'status','from_file')
    actions       = ('approve','deny',)

    @admin.display(description='Zi')
    def get_day_repr(self, obj):

        start = date(2025, 7, 1)
        # 2) converteşti DayID la int
        try:
            offset = int(obj.day.DayID[1:])
        except (ValueError, TypeError):
            offset = 0  # fallback
        # 3) adaugi offset-ul
        actual = start + timedelta(days=offset)
        # 4) formatezi string-ul cum vrei
        return actual.strftime('%d.%m.%Y')
    @admin.display(description='department')
    def get_department_name(self, obj):
        return "Unitate " + re.search(r'\d+', obj.department.Name.split('.')[0]).group()
    @admin.action(description="Approve selected")
    def approve(self, request, qs):
        cnt = qs.filter(status='P', from_file=True).update(status='A')
        self.message_user(request, f"{cnt} requests approved.")
    @admin.action(description="Deny selected")
    def deny(self, request, qs):
        cnt = qs.filter(status='P').update(status='D')
        self.message_user(request, f"{cnt} requests denied.")
from django.contrib import admin
from calendarapp.models.emergency_request import EmergencyRequest

from django.contrib import admin
from calendarapp.models.emergency_request import EmergencyRequest
from calendarapp.models.event import Event
from calendarapp.models.day import Day

@admin.register(EmergencyRequest)
class EmergencyRequestAdmin(admin.ModelAdmin):
    # change_list_template = "admin/calendarapp/event/change_list.html"
    list_display = (
        'date',
        'get_call_nurses',
        'get_remove_nurses',
        'status',
        'process_button',
    )
    list_editable = ('status',)
    filter_horizontal = ('remove_nurses', 'call_nurses')
    readonly_fields = ('created_at',)
    actions = ('approve_requests', 'deny_requests',)

    def get_call_nurses(self, obj):
        return ", ".join(str(n) for n in obj.call_nurses.all())
    get_call_nurses.short_description = 'Nurse de chemat'

    def get_remove_nurses(self, obj):
        return ", ".join(str(n) for n in obj.remove_nurses.all())
    get_remove_nurses.short_description = 'Nurse de scos din tura'

    @admin.action(description="Approve selected Emergency Requests")
    def approve_requests(self, request, queryset):
        pending = queryset.filter(status='P')
        cnt = pending.update(status='A')
        self.message_user(request, f"{cnt} cereri de urgenta au fost aprobate.")

    @admin.action(description="Deny selected Emergency Requests")
    def deny_requests(self, request, queryset):
        pending = queryset.filter(status='P')
        cnt = pending.update(status='D')
        self.message_user(request, f"{cnt} cereri de urgenta au fost respinse.")

    def process_button(self, obj):
        """
        returneaza  butonul proceseaza pentru verificare date
        pentru revenire reverse('admin:process_emergency_request', args=[obj.pk])
        """
        url = reverse('admin:process_emergency_request', args=[obj.pk])
        return format_html(
            '<a class="button" href="{}" style="background-color:#5A8DEE; color:white; padding:2px 6px; text-decoration:none; border-radius:4px;">Proceseaza</a>',
            url
        )
    process_button.short_description = 'Actiune'
    process_button.allow_tags = True

    def get_urls(self):
        urls = super().get_urls()
        custom_urls = [
            path(
                'process-request/<int:pk>/',
                self.admin_site.admin_view(self.process_emergency_request),
                name='process_emergency_request',
            ),
        ]

        return custom_urls + urls
    def process_emergency_request(self, request, pk, *args, **kwargs):
        """
        View personalizat care:
        incarca EmergencyRequest cu id=pk
        verifica daca asistentele din call_nurses si remove_nurses mai sunt disponibile
        daca da, cauta Evenimentul corespunzator (dupa asistenta, data si shift_type) si-l actualizeaza.
        trimite mesaje de succes sau eroare (message_user).
        redirectioneaza inapoi la pagina de listare
        """

        emergency = get_object_or_404(EmergencyRequest, pk=pk)


        data_tura = emergency.date
        print("data_tura:", str(data_tura).split("-")[2])
        call_nurses = list(emergency.call_nurses.all())
        remove_nurses = list(emergency.remove_nurses.all())

        unavailable = []
        day=None
        for nurse in call_nurses :
            # caut evenimente care se suprapun pentru aceasta asistenta in aceeasi zi+shift
            # daca gasim >=1  evenimente in baza de date, inseamna ca nu e libera
            print("Verificam disponibilitatea asistentei:", nurse)
            global_object=GlobalObject.objects.get(id=nurse.GlobalObject_id)
            num = re.search(r'\d+', global_object.Name).group()
            data=int(num+str(int(str(data_tura).split("-")[2])))
            day=Day.objects.get(DayID=data)
            nurse_day_shift_type=NurseDayShiftType.objects.get(Day=day,Nurse=nurse)
            conflict_qs = Event.objects.filter(
                NurseDayShiftType=nurse_day_shift_type
            )
            if conflict_qs.exists():
                unavailable.append(nurse)

        if unavailable:
            print("e unavailable:", unavailable)
            # cel putin o asistenta nu mai e disponibila
            nume_neliberi = ", ".join(str(n) for n in unavailable)
            self.message_user(
                request,
                f"Operatiunea a esuat: urmatoarea asistenta(ti) nu sunt disponibile pe {data_tura} : {nume_neliberi}.",
                level=messages.ERROR
            )
            return redirect('..')  # revin la lista de obiecte
        print("am trecut de verificare ")


        try:
            #  pentru fiecare remove_nurse exista exact un eveniment
            for remove_nurse in remove_nurses:
                print("am intrat in remove_nurses")
                nurseDayShiftType=NurseDayShiftType.objects.get(Nurse=remove_nurse, Day=day)
                nurseDayShiftType.IsAssigned = False
                nurseDayShiftType.save()
                print(f"x:{nurseDayShiftType.id} {nurseDayShiftType.Nurse.EmployeeID} {nurseDayShiftType.Day.DayID}")
                event_vechi = Event.objects.get(
                    NurseDayShiftType=nurseDayShiftType,
                )
                print("am gasit event_vechi",event_vechi)
                # inlocuiesc cu prima asistenta
                for call_nurse in call_nurses:
                    x=NurseDayShiftType.objects.get(Nurse=call_nurse, Day=day)
                    print(f"x:{x.id} {x.Nurse.EmployeeID} {x.Day.DayID}" )
                    x.IsAssigned = True
                    x.save()  # fac update
                    print("am updatat nurseDayShiftType")
                    event_vechi.nurse_day_shift_type = x
                    event_vechi.title = f"{call_nurse.EmployeeID}/{x.ShiftType.ShiftID}"
                    event_vechi.save()  # fac update pe event_vechi
                    print("am updatat event_vechi")
        except Event.DoesNotExist:
            self.message_user(
                request,
                f"Operatiunea a esuat: nu am gait niciun eveniment existent pentru asistenta(tile) {', '.join(str(n) for n in remove_nurses)} pe {data_tura} ({shift_type}).",
                level=messages.ERROR
            )
            return redirect('..')
        self.message_user(
            request,
            f"S-au procesat cu succes cererile de pe {data_tura} ). Asistentele din ‘remove_nurses’ au fost inlocuite cu cele din ‘call_nurses’.",
            level=messages.WARNING
        )
        emergency.delete()
        return redirect('..')

import calendarapp.models.nurse as nurse_module
from calendarapp.models.nurse import Nurse
from django.db.models import Model
# Înlocuim constructorul complex cu unul care apelează doar Model.__init__
# 1) Replace the complex __init__ so Admin's add‐view won't call your constructor
Nurse.__init__ = lambda self, *args, **kwargs: Model.__init__(self, *args, **kwargs)

# 2) Provide default empty lists for all of your custom relations
def _nurse_getattr(self, name):
    if name in ("NurseDay", "NurseShiftType", "NurseDayShiftType", "OptScopeNurse"):
        lst = []
        object.__setattr__(self, name, lst)
        return lst
    # anything else—fall back to normal behavior
    return object.__getattribute__(self, name)

Nurse.__getattr__ = _nurse_getattr


@admin.register(Nurse)
class NurseAdmin(admin.ModelAdmin):
    # restore the GlobalObject dropdown so you can actually pick one
    fields = (
        "EmployeeID",
        "GlobalObject",
        "MaxShifts",
        "MaxTotalMins",
        "MinTotalMins",
        "MaxConsShifts",
        "MinConsShifts",
        "MinConsDaysOff",
        "MaxWeekends",
        "DaysOff",
    )
    autocomplete_fields = ["GlobalObject"]
    list_display = ("EmployeeID", "get_department_name")

    def get_changeform_initial_data(self, request):
        go = GlobalObject.objects.first()
        return {'GlobalObject': go.pk} if go else {}
    def save_model(self, request, obj, form, change):
        # ensure you don't violate the NOT NULL on GlobalObject_id
        if obj.GlobalObject_id is None:
            obj.GlobalObject = GlobalObject.objects.first()
        super().save_model(request, obj, form, change)

    @admin.display(description='department')
    def get_department_name(self, obj):
        return "Unitate " + re.search(r'\d+', obj.GlobalObject.Name.split('.')[0]).group()
    def export_nurses_csv(self, request, queryset):
        field_names = [
            'EmployeeID',
            'GlobalObject_id',
            'MaxShifts',
            'MaxTotalMins',
            'MinTotalMins',
        ]
        response = HttpResponse(content_type='text/csv')
        response['Content-Disposition'] = 'attachment; filename=nurses.csv'
        writer = csv.writer(response)
        writer.writerow(field_names)
        for nurse in queryset:
            writer.writerow([getattr(nurse, f) for f in field_names])
        return response
    export_nurses_csv.short_description = 'Export selected nurses to CSV'


@admin.register(GlobalObject)
class GlobalObjectAdmin(admin.ModelAdmin):
    list_display = (
        'id',
        'Name',
        'HorizonLength',
        'TotalMinutes',
        'TotalMinutesToMin',
        'TotalMinutesToMax',
    )
    list_editable = ('HorizonLength', 'TotalMinutes', 'TotalMinutesToMin', 'TotalMinutesToMax')
    search_fields = ('Name',)




def _register_all_models(app_label: str) -> None:
    """Register any remaining models showing all fields."""

    for model in apps.get_app_config(app_label).get_models():
        if model in admin.site._registry:
            continue

        admin_class = type(
            f"{model.__name__}Admin",
            (admin.ModelAdmin,),
            {"list_display": [f.name for f in model._meta.fields]},
        )

        try:
            admin.site.register(model, admin_class)
        except AlreadyRegistered:
            pass


_register_all_models("calendarapp")

