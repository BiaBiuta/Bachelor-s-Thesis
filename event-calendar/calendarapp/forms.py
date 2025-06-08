from django.forms import ModelForm, DateInput
from calendarapp.models import Event, EventMember
from django import forms
from calendarapp.models.cereri.shift_request import ShiftRequest
from calendarapp.models.shift_type import ShiftType
from calendarapp.models.day_shift_type import DayShiftType
from calendarapp.models.sanitation_task import SanitationTask




class EventForm(ModelForm):
    class Meta:
        model = Event
        fields = ["title", "description", "start_time", "end_time"]
        # datetime-local is a HTML5 input type
        widgets = {
            "title": forms.TextInput(
                attrs={"class": "form-control", "placeholder": "Enter event title"}
            ),
            "description": forms.Textarea(
                attrs={
                    "class": "form-control",
                    "placeholder": "Enter event description",
                }
            ),
            "start_time": DateInput(
                attrs={"type": "datetime-local", "class": "form-control"},
                format="%Y-%m-%dT%H:%M",
            ),
            "end_time": DateInput(
                attrs={"type": "datetime-local", "class": "form-control"},
                format="%Y-%m-%dT%H:%M",
            ),
        }
        exclude = ["user"]

    def __init__(self, *args, **kwargs):
        super(EventForm, self).__init__(*args, **kwargs)
        # input_formats to parse HTML5 datetime-local input to datetime field
        self.fields["start_time"].input_formats = ("%Y-%m-%dT%H:%M",)
        self.fields["end_time"].input_formats = ("%Y-%m-%dT%H:%M",)


class AddMemberForm(forms.ModelForm):
    class Meta:
        model = EventMember
        fields = ["user"]
# class ShiftRequestForm(forms.ModelForm):
#     class Meta:
#         model = ShiftRequest
#         fields = ['nurse', 'department', 'day', 'shift_type', 'req_type', 'weight']
#         widgets = {
#             'nurse': forms.Select(attrs={'class': 'form-control'}),
#             'department': forms.Select(attrs={'class': 'form-control'}),
#             'day': DateInput(
#                 attrs={"type": "datetime-local", "class": "form-control"},
#                 format="%Y-%m-%dT%H:%M",
#             ),
#             'shift_type': forms.Select(attrs={'class': 'form-control'}),
#             'req_type': forms.Select(attrs={'class': 'form-control'}),
#             'weight': forms.NumberInput(attrs={'class': 'form-control', 'step': '1'}),
#         }
#
#     def __init__(self, *args, **kwargs):
#         # 1) Extragem department_id (trebuie să fie transmis de view)
#         department_id = kwargs.pop('department_id', None)
#
#         # 2) Inițializăm formularul prin apelul super
#         super().__init__(*args, **kwargs)
#
#         # 3) Setăm valoarea inițială a câmpului 'department' (dacă exista)
#         if department_id is not None:
#             self.fields['department'].initial = department_id
#             # Dacă vreți să îl faceți readonly/ disabled, puteți:
#             # self.fields['department'].widget.attrs['readonly'] = True
#             # Sau ca hidden:
#             # self.fields['department'].widget = forms.HiddenInput()
#
#         # 4) În mod implicit, queryset gol pentru 'shift_type'
#         qs = ShiftType.objects.none()
#
#         # 5) Dacă avem department_id, populează shift_type cu toate turele din acel departament
#         if department_id:
#             qs = ShiftType.objects.filter(GlobalObject_id=department_id)
#
#         # 6) Setăm queryset‐ul final pe câmpul 'shift_type'
#         self.fields['shift_type'].queryset = qs
# calendarapp/forms.py
import re
from datetime import datetime
from django import forms
from django.core.exceptions import ValidationError
from calendarapp.models.cereri.shift_request import ShiftRequest
from calendarapp.models.day import Day
from calendarapp.models.shift_type import ShiftType
from calendarapp.models.global_object import GlobalObject

class ShiftRequestForm(forms.ModelForm):
    # 1) Declari “day” ca un simplu CharField (browserul îţi poate trimite orice text)
    day = forms.CharField(
        widget=forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'DD/MM/YYYY hh:mm AM/PM'}),
        required=True
    )

    # # 2) Declari “shift_type” tot ca un CharField
    # shift_type = forms.CharField(
    #     widget=forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Ex. E2'}),
    #     required=True
    # )

    class Meta:
        model = ShiftRequest
        fields = ['nurse', 'department', 'day', 'shift_type', 'req_type', 'weight']
        widgets = {
            'nurse': forms.Select(attrs={'class': 'form-control'}),
            'department': forms.Select(attrs={'class': 'form-control'}),
            'shift_type': forms.Select(attrs={'class': 'form-control'}),
            'req_type': forms.Select(attrs={'class': 'form-control'}),
            'weight': forms.NumberInput(attrs={'class': 'form-control', 'step': '1'}),
        }

    def clean_day(self):

        raw = self.cleaned_data.get('day', '').strip()
        rar=self.cleaned_data.get('department')
        print("rar",rar)
        print(">>> [DEBUG clean_day] raw_day primit de la client:", repr(raw))  # <— aici
        if not raw:
            raise ValidationError("Câmpul 'Zi' este obligatoriu.")

        try:
            dt_obj = datetime.strptime(raw, "%Y-%m-%d %H:%M:%S")
            print(">>> [DEBUG clean_day] dt_obj =", dt_obj)
        except ValueError:
            raise ValidationError("Format dată invalid. Folosește DD/MM/YYYY hh:mm AM/PM.")

        y = dt_obj.year
        m = dt_obj.month
        d = int(dt_obj.day)
        # print(self.department_id)
        num=re.search(r'\d+', GlobalObject.objects.get(pk=rar.id).Name).group()

        day_pk = int(num+str(d))
        print(f">>> [DEBUG clean_day] Calculat day_pk = {day_pk}")


        try:
            day_instance = Day.objects.get(pk=day_pk)
            print(f">>> [DEBUG clean_day] Am găsit instanţa Day: {day_instance!r}")
            aw = self.cleaned_data.get('shift_type')
            print("raw shift_type", aw)
        except Day.DoesNotExist:
            print(f">>> [DEBUG clean_day] Nu există niciun Day cu PK={day_pk}")
            raise ValidationError(f"Nu există nicio zi cu ID={day_pk} în baza de date.")


        return day_instance

    # def clean_shift_type(self):
    #     print("am intrat in clean_shift_type")
    #     raw = self.cleaned_data.get('shift_type')
    #     if not raw:
    #         raise ValidationError("Câmpul 'Tip Tură' este obligatoriu.")
    #     try:
    #         st = ShiftType.objects.get(pk=raw)
    #     except ShiftType.DoesNotExist:
    #         raise ValidationError(f"Nu există nicio tură cu codul '{raw}'.")
    #     return st

    # def clean(self):
    #     """
    #     În clean() poți verifica coerența între day și shift_type:
    #     de exemplu, dacă vrei doar turele cu deficit, la final poți verifica:
    #     """
    #     cleaned = super().clean()
    #     day_obj = cleaned.get('day')           # este deja un instance of Day
    #     shift_type_obj = cleaned.get('shift_type')  # instance of ShiftType
    #     dept_obj = self.department_id
    #
    #     # Dacă nu s-au validat day/shift_type, oprește aici
    #     if not day_obj or not shift_type_obj or not dept_obj:
    #         return cleaned
    #
    #     # verifici că acel shift_type aparține aceluiași departament
    #     if shift_type_obj.GlobalObject_id != dept_obj.pk:
    #         raise ValidationError("ShiftType-ul ales nu corespunde departamentului selectat.")
    #
    #     # verifici deficit, dacă vrei
    #     from calendarapp.models.day_shift_type import DayShiftType
    #     try:
    #         dst = DayShiftType.objects.get(Day=day_obj, ShiftType=shift_type_obj)
    #     except DayShiftType.DoesNotExist:
    #         raise ValidationError("Nu există nicio înregistrare DayShiftType pentru ziua și tipul de tură selectat.")
    #     gap = dst.gap_required_vs_actual()
    #     if gap <= 0:
    #         raise ValidationError("În ziua aleasă nu există deficit pentru tura selectată.")
    #
    #     return cleaned

    def __init__(self, *args, **kwargs):
        # 1) Extragem department_id (trebuie să fie transmis de view)

        self.department_id = kwargs.pop('department_id', None)

        # 2) Inițializăm formularul prin apelul super
        super().__init__(*args, **kwargs)

        # 3) Setăm valoarea inițială a câmpului 'department' (dacă exista)
        if self.department_id is not None:
            self.fields['department'].initial = self.department_id
            # Dacă vreți să îl faceți readonly/ disabled, puteți:
            self.fields['department'].widget.attrs['readonly'] = True
            # Sau ca hidden:
            # self.fields['department'].widget = forms.HiddenInput()

        # 4) În mod implicit, queryset gol pentru 'shift_type'
        # qs = ShiftType.objects.none()
        #
        # # 5) Dacă avem department_id, populează shift_type cu toate turele din acel departament
        # if self.department_id:
        #     qs = ShiftType.objects.)
        #
        # # 6) Setăm queryset‐ul final pe câmpul 'shift_type'
        # qs = ShiftType.objects.all()
        # q=[]
        # for st in qs:
        #     q.append(st.pk)
        # self.fields['shift_type'] = q


class SanitationTaskForm(forms.ModelForm):
    class Meta:
        model = SanitationTask
        fields = ["title", "location", "start_time", "end_time", "department", "nurse"]
        widgets = {
            "title": forms.TextInput(attrs={"class": "form-control"}),
            "location": forms.TextInput(attrs={"class": "form-control"}),
            "start_time": DateInput(attrs={"type": "datetime-local", "class": "form-control"}, format="%Y-%m-%dT%H:%M"),
            "end_time": DateInput(attrs={"type": "datetime-local", "class": "form-control"}, format="%Y-%m-%dT%H:%M"),
            "department": forms.Select(attrs={"class": "form-control"}),
            "nurse": forms.Select(attrs={"class": "form-control"}),
        }

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields["start_time"].input_formats = ("%Y-%m-%dT%H:%M",)
        self.fields["end_time"].input_formats = ("%Y-%m-%dT%H:%M",)

