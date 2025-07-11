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

import re
from datetime import datetime
from django import forms
from django.core.exceptions import ValidationError
from calendarapp.models.cereri.shift_request import ShiftRequest
from calendarapp.models.day import Day
from calendarapp.models.shift_type import ShiftType
from calendarapp.models.global_object import GlobalObject

class ShiftRequestForm(forms.ModelForm):
    day = forms.CharField(
        widget=forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'DD/MM/YYYY hh:mm AM/PM'}),
        required=True
    )
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
            print(f">>> [DEBUG clean_day] Am gasit instanta Day: {day_instance!r}")
            aw = self.cleaned_data.get('shift_type')
            print("raw shift_type", aw)
        except Day.DoesNotExist:
            print(f">>> [DEBUG clean_day] Nu exista niciun Day cu PK={day_pk}")
            raise ValidationError(f"Nu exista nicio zi cu ID={day_pk} in baza de date.")


        return day_instance



    def __init__(self, *args, **kwargs):
        self.department_id = kwargs.pop('department_id', None)
        super().__init__(*args, **kwargs)
        if self.department_id is not None:
            self.fields['department'].initial = self.department_id
            self.fields['department'].widget.attrs['readonly'] = True



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

