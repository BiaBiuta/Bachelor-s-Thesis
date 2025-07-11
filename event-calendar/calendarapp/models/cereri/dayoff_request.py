# calendarapp/models/dayoff_request.py
from django.db import models
from django.conf import settings
from calendarapp.models.day import Day
from calendarapp.models.global_object import GlobalObject
from calendarapp.models.cereri.dayoff_option import DayOffOption
from calendarapp.models.nurse import Nurse

class DayOffRequest(models.Model):
    STATUS = [('P','Pending'),('A','Approved'),('D','Denied')]

    nurse      = models.ForeignKey(Nurse, on_delete=models.CASCADE)
    department = models.ForeignKey(GlobalObject, on_delete=models.CASCADE)
    day        = models.ForeignKey(Day, on_delete=models.CASCADE)
    status     = models.CharField(max_length=1, choices=STATUS, default='P')
    from_file  = models.BooleanField(default=False)

    created_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        unique_together = ('nurse','day')

    def save(self, *args, **kwargs):
        exists = DayOffOption.objects.filter(
            nurse=self.nurse,
            day=self.day
        ).exists()
        self.from_file = exists
        super().save(*args, **kwargs)
