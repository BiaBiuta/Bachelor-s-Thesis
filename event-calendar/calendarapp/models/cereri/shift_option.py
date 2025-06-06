# calendarapp/models/shift_option.py
from django.db import models
from django.conf import settings
from calendarapp.models.day import Day
from calendarapp.models.shift_type import ShiftType
from calendarapp.models.nurse import Nurse
from calendarapp.models.global_object import GlobalObject

class ShiftOption(models.Model):
    """Unica sursă de adevăr pentru cererile posibile, așa cum apar în fișier."""
    nurse      = models.ForeignKey(Nurse, on_delete=models.CASCADE)
    department = models.ForeignKey(GlobalObject, on_delete=models.CASCADE)
    day        = models.ForeignKey(Day, on_delete=models.CASCADE)
    shift_type = models.ForeignKey(ShiftType, on_delete=models.CASCADE)
    req_type   = models.CharField(max_length=3, choices=[('ON','On'),('OFF','Off')])
    weight     = models.FloatField()
