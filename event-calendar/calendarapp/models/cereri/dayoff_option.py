# calendarapp/models/dayoff_option.py
from django.db import models
from django.conf import settings
from calendarapp.models.day import Day
from calendarapp.models.global_object import GlobalObject
from calendarapp.models.nurse import Nurse

class DayOffOption(models.Model):
    """
    Opțiuni de zile libere încărcate din SECTION_DAYS_OFF.
    Nurse poate alege doar din aceste zile.
    """
    nurse      = models.ForeignKey(Nurse, on_delete=models.CASCADE)
    department = models.ForeignKey(GlobalObject, on_delete=models.CASCADE)
    day        = models.ForeignKey(Day, on_delete=models.CASCADE)

    class Meta:
        unique_together = ('nurse','day')
