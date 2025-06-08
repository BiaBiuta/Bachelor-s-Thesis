import re

from django.contrib import admin
from calendarapp import models
from django.contrib import admin
from django.contrib.auth.models import Group, Permission, User
from django.core.checks import messages
from django.shortcuts import get_object_or_404, redirect
from django.urls import reverse, path
from django.utils.html import format_html
from django.http import HttpResponse
import csv

from calendarapp.models.global_object import GlobalObject

from channels.layers import get_channel_layer
from asgiref.sync import async_to_sync

# Dez‐înregistrăm modelul Group
admin.site.unregister(Group)

# Dacă vrei să ascunzi și permisiunile din meniul Admin

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
        """Show only unapproved events to the admin by default."""
        qs = super().get_queryset(request)
        if request.user.is_superuser:
            return qs.filter(is_approved=False)
        return qs

    def approve_events(self, request, queryset):
        """Approve selected events."""
        queryset.update(is_approved=True)
        self.message_user(request, "Selected events have been approved.")
    approve_events.short_description = "Approve selected events"

    def export_events_csv(self, request, queryset):
        """Export selected events to CSV."""
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


# @admin.register(models.EventMember)
# class EventMemberAdmin(admin.ModelAdmin):
#     model = models.EventMember
#     list_display = ["id", "event", "user", "created_at", "updated_at"]
#     list_filter = ["event"]
# # from django.contrib import admin
# # from models.nurse import Nurse
# #
# # @admin.register(Nurse)
# # class NurseAdmin(admin.ModelAdmin):
# #     list_display = ('user', 'employee_id', 'max_shifts')
from django.contrib import admin
from calendarapp.models.coverage_requirements import CoverageRequirement

@admin.register(CoverageRequirement)
class CoverageRequirementAdmin(admin.ModelAdmin):
    list_display  = ('day', 'shift_id', 'requirement', 'weight_under', 'weight_over', 'department')
    list_editable = ('requirement', 'weight_under', 'weight_over')
    list_per_page = 14   # vezi câte zile ai
    ordering      = ('day',)
from django.contrib import admin


# admin.py
from django.contrib import admin
from django.utils.translation import gettext_lazy as _
from calendarapp.models.day_shift_type import DayShiftType
from calendarapp.models.global_object import GlobalObject
from calendarapp.models.cereri.shift_request import ShiftRequest
from calendarapp.models.cereri.dayoff_request import DayOffRequest
from calendarapp.models.nurse_day_shift_type import NurseDayShiftType

class GlobalObjectFilter(admin.SimpleListFilter):
    title = _('Global Object')
    parameter_name = 'global_object'

    def lookups(self, request, model_admin):
        return [
            (go.id, f"{go.id} – Department")
            for go in GlobalObject.objects.all()
        ]
    def queryset(self, request, queryset):
        if self.value():
            return queryset.filter(Day__GlobalObject_id=self.value())
        return queryset

@admin.register(DayShiftType)
class DayShiftTypeAdmin(admin.ModelAdmin):
    list_display  = ('Day', 'ShiftType', 'NrRequired', 'UnderCoverWeight', 'OverCoverWeight')
    list_editable = ('NrRequired', 'UnderCoverWeight', 'OverCoverWeight')
    list_filter   = (GlobalObjectFilter, )
    ordering      = ('Day__DayID', 'ShiftType__ShiftID')

@admin.register(ShiftRequest)
class ShiftRequestAdmin(admin.ModelAdmin):
    change_list_template = "admin/calendarapp/shift_request/change_list.html"
    list_display = ('nurse','get_department_name',    # afișează doar un câmp, nu întreg obiectul
        'get_day_repr','get_shift_type','req_type','weight','status')
    list_display_links = ('nurse',)  # sau alt câmp care e și în list_display

    list_editable = ('status',)
    list_filter  = ('department','status','req_type')
    actions      = ('approve_requests','deny_requests',)

    @admin.display(description='Departament')
    def get_department_name(self, obj):
        # presupunem că GlobalObject are un câmp 'name'
        return obj.department.Name

    @admin.display(description='Zi')
    def get_day_repr(self, obj):
        # presupunem că Day are un câmp 'date' (sau altceva reprezentativ)
        return obj.day.DayID
    @admin.display(description='Tipul de schimb')
    def get_shift_type(self, obj):
        # presupunem că ShiftType are un câmp 'name' (sau altceva reprezentativ)
        return obj.shift_type.ShiftID

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
    list_display  = ('nurse','department','day','status','from_file')
    list_editable = ('status',)
    list_filter   = ('department','status','from_file')
    actions       = ('approve','deny',)

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
        'process_button',   # noua coloană cu buton
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
    get_remove_nurses.short_description = 'Nurse de scos din tură'

    # ---------------------------
    #  Acțiuni existente
    # ---------------------------
    @admin.action(description="Approve selected Emergency Requests")
    def approve_requests(self, request, queryset):
        pending = queryset.filter(status='P')
        cnt = pending.update(status='A')
        self.message_user(request, f"{cnt} cereri de urgență au fost aprobate.")

    @admin.action(description="Deny selected Emergency Requests")
    def deny_requests(self, request, queryset):
        pending = queryset.filter(status='P')
        cnt = pending.update(status='D')
        self.message_user(request, f"{cnt} cereri de urgență au fost respinse.")

    # ---------------------------
    #  1) Adăugarea butonului “Procesează”
    # ---------------------------
    def process_button(self, obj):
        """
        Returnează un buton „Procesează” care trimite la URL-ul personalizat.
        Folosește `reverse('admin:process_emergency_request', args=[obj.pk])`.
        """
        url = reverse('admin:process_emergency_request', args=[obj.pk])
        return format_html(
            '<a class="button" href="{}" style="background-color:#5A8DEE; color:white; padding:2px 6px; text-decoration:none; border-radius:4px;">Procesează</a>',
            url
        )
    process_button.short_description = 'Acțiune'  # antet coloană
    process_button.allow_tags = True

    # ---------------------------
    #  2) Definirea rutei personalizate
    # ---------------------------
    def get_urls(self):
        urls = super().get_urls()
        custom_urls = [
            path(
                'process-request/<int:pk>/',
                self.admin_site.admin_view(self.process_emergency_request),
                name='process_emergency_request',
            ),
        ]
        # punem rutele personalizate înainte, ca să le „prindă” înaintea celor standard
        return custom_urls + urls

    # ---------------------------
    #  3) Logica de procesare a cererii
    # ---------------------------
    def process_emergency_request(self, request, pk, *args, **kwargs):
        """
        View personalizat care:
        - Încarcă EmergencyRequest cu id=pk.
        - Verifică dacă asistentele din call_nurses și remove_nurses mai sunt disponibile.
        - Dacă da, caută Evenimentul corespunzător (după asistentă, dată și shift_type) și-l actualizează.
        - Trimite mesaje de succes sau eroare (message_user).
        - Redirecționează înapoi la pagina de listare.
        """

        emergency = get_object_or_404(EmergencyRequest, pk=pk)


        data_tura = emergency.date
        # shift_type = emergency.shiftType_id  # sau: emergency.get_shift_type_display(), după cum aveți în model
        print("data_tura:", str(data_tura).split("-")[2])
        call_nurses = list(emergency.call_nurses.all())
        remove_nurses = list(emergency.remove_nurses.all())

        unavailable = []
        day=None
        for nurse in call_nurses :
            # Căutăm evenimente care se suprapun pentru această asistentă în aceeași zi+shift.
            # Dacă găsim >=1 astfel de evenimente în baza de date, înseamnă că nu e liberă.
            print("Verificăm disponibilitatea asistentei:", nurse)
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
            # Cel puțin o asistentă nu mai e disponibilă.
            nume_neliberi = ", ".join(str(n) for n in unavailable)
            self.message_user(
                request,
                f"Operațiunea a eșuat: următoarea asistentă(ți) nu sunt disponibile pe {data_tura} : {nume_neliberi}.",
                level=messages.ERROR
            )
            return redirect('..')  # înseamnă “să revin la lista de obiecte”
        print("am trecut de verificare ")


        try:
            # Vom presupune că pentru fiecare remove_nurse există exact un eveniment.
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
                # Înlocuim cu prima asistentă din call_nurses
                # (dacă sunt mai multe, poate vreți altă regulă: rotire, ordonare, etc.)
                for call_nurse in call_nurses:
                    x=NurseDayShiftType.objects.get(Nurse=call_nurse, Day=day)
                    print(f"x:{x.id} {x.Nurse.EmployeeID} {x.Day.DayID}" )
                    x.IsAssigned = True
                    x.save()  # face UPDATE pe rândul respectiv
                    print("am updatat nurseDayShiftType")
                    # 2. Dacă vreți să legați relația cu event_vechi (presupunând că există un câmp FK sau M2M)
                    #    presupunem un FK pe event_vechi numit `nurse_day_shift_type`
                    event_vechi.nurse_day_shift_type = x
                    event_vechi.title = f"{call_nurse.EmployeeID}/{x.ShiftType.ShiftID}"
                    event_vechi.save()  # face UPDATE pe event_vechi
                    print("am updatat event_vechi")
        except Event.DoesNotExist:
            self.message_user(
                request,
                f"Operațiunea a eșuat: nu am găsit niciun eveniment existent pentru asistentă(țile) {', '.join(str(n) for n in remove_nurses)} pe {data_tura} ({shift_type}).",
                level=messages.ERROR
            )
            return redirect('..')
        self.message_user(
            request,
            f"S-au procesat cu succes cererile de pe {data_tura} ). Asistentele din ‘remove_nurses’ au fost înlocuite cu cele din ‘call_nurses’.",
            level=messages.WARNING
        )
        emergency.delete()
        return redirect('..')


from calendarapp.models.nurse import Nurse


@admin.register(Nurse)
class NurseAdmin(admin.ModelAdmin):
    list_display = (
        'EmployeeID',
        'GlobalObject',
        'MaxShifts',
        'TotalMins',
        'minutes_to_min',
        'minutes_to_max',
    )
    list_filter = ('GlobalObject',)
    search_fields = ('EmployeeID',)
    actions = ['export_nurses_csv']

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
    search_fields = ('Name',)
