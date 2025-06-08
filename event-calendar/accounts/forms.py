from django import forms
from django.core.exceptions import ValidationError
from django.contrib.auth.password_validation import validate_password

from accounts.models import User
from calendarapp.models.nurse import Nurse
from calendarapp.models.global_object import GlobalObject


class SignInForm(forms.Form):
    email = forms.EmailField(widget=forms.EmailInput(attrs={"class": "form-control"}))
    password = forms.CharField(
        widget=forms.PasswordInput(attrs={"class": "form-control"})
    )


class SignUpForm(forms.ModelForm):
    username = forms.CharField(
        widget=forms.TextInput(attrs={"class": "form-control"})
    )
    unitate_medicala = forms.ModelChoiceField(
        label="Department",
        queryset=GlobalObject.objects.all(),
        widget=forms.Select(attrs={"class": "form-control"})
    )
    password1 = forms.CharField(
        label="Password",
        widget=forms.PasswordInput(attrs={"class": "form-control"}),
        validators=[validate_password],
    )
    password2 = forms.CharField(
        label="Confirm Password",
        widget=forms.PasswordInput(attrs={"class": "form-control"}),
        validators=[validate_password],
    )

    employee_id = forms.CharField(
        label="Employee ID",
        widget=forms.TextInput(attrs={"class": "form-control"})
    )
    max_shifts = forms.CharField(
        label="Max Shifts",
        widget=forms.TextInput(attrs={"class": "form-control"})
    )
    max_total_mins = forms.IntegerField(
        label="Max Total Minutes",
        widget=forms.NumberInput(attrs={"class": "form-control"})
    )
    min_total_mins = forms.IntegerField(
        label="Min Total Minutes",
        widget=forms.NumberInput(attrs={"class": "form-control"})
    )
    max_cons_shifts = forms.IntegerField(
        label="Max Consecutive Shifts",
        widget=forms.NumberInput(attrs={"class": "form-control"})
    )
    min_cons_shifts = forms.IntegerField(
        label="Min Consecutive Shifts",
        widget=forms.NumberInput(attrs={"class": "form-control"})
    )
    min_cons_days_off = forms.IntegerField(
        label="Min Consecutive Days Off",
        widget=forms.NumberInput(attrs={"class": "form-control"})
    )
    max_weekends = forms.IntegerField(
        label="Max Weekends",
        widget=forms.NumberInput(attrs={"class": "form-control"})
    )
    days_off = forms.FloatField(
        label="Days Off",
        widget=forms.NumberInput(attrs={"class": "form-control"})
    )

    class Meta:
        model = User
        fields = ["email", "username", "unitate_medicala"]
        widgets = {"email": forms.EmailInput(attrs={"class": "form-control"})}

    def clean_password2(self):
        password1 = self.cleaned_data.get("password1")
        password2 = self.cleaned_data.get("password2")
        if password1 and password2 and password1 != password2:
            raise ValidationError("Password didn't match!")
        return password2

    def save(self, commit=True):
        user = super().save(commit=False)
        user.username = self.cleaned_data["username"]
        unit = self.cleaned_data["unitate_medicala"]
        # unitate_medicala este ModelChoiceField -> salvăm ID-ul
        user.unitate_medicala = unit.id if hasattr(unit, "id") else unit
        user.set_password(self.cleaned_data["password1"])
        if commit:
            user.save()
            Nurse.objects.create(
                EmployeeID=self.cleaned_data["employee_id"],
                MaxShifts=self.cleaned_data["max_shifts"],
                MaxTotalMins=self.cleaned_data["max_total_mins"],
                MinTotalMins=self.cleaned_data["min_total_mins"],
                MaxConsShifts=self.cleaned_data["max_cons_shifts"],
                MinConsShifts=self.cleaned_data["min_cons_shifts"],
                MinConsDaysOff=self.cleaned_data["min_cons_days_off"],
                MaxWeekends=self.cleaned_data["max_weekends"],
                DaysOff=self.cleaned_data["days_off"],
                GlobalObject=unit,
            )
        return user
