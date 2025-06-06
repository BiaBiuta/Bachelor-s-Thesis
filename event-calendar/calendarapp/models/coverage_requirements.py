from django.db import models
from calendarapp.models.global_object  import GlobalObject
class CoverageRequirement(models.Model):
    day          = models.PositiveIntegerField()
    shift_id     = models.CharField(max_length=10)
    requirement  = models.PositiveIntegerField(default=0)
    weight_under = models.PositiveIntegerField(default=100)
    weight_over  = models.PositiveIntegerField(default=1)
    department = models.ForeignKey(GlobalObject, on_delete=models.CASCADE, default="")

    class Meta:
        ordering = ['day']

    def __str__(self):
        return f"{self.day} – {self.shift_id}"
