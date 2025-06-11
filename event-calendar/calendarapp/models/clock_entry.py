from django.db import models
from django.utils import timezone
from calendarapp.models.nurse import Nurse
from calendarapp.models.global_object import GlobalObject


class ClockEntry(models.Model):
    """Stores check in/out information for a nurse."""
    nurse = models.ForeignKey(Nurse, to_field="EmployeeID", on_delete=models.CASCADE)
    department = models.ForeignKey(GlobalObject, on_delete=models.CASCADE)
    start_time = models.DateTimeField(default=timezone.now)
    end_time = models.DateTimeField(blank=True, null=True)

    class Meta:
        ordering = ["-start_time"]

    def __str__(self) -> str:  # pragma: no cover - simple representation
        return f"{self.nurse.EmployeeID} {self.start_time:%Y-%m-%d %H:%M}"

    def duration_hours(self) -> float:
        """Return the duration of this entry in hours."""
        if self.end_time:
            delta = self.end_time - self.start_time
            return delta.total_seconds() / 3600
        return 0.0
