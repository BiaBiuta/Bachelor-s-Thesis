from django.db import models
from django.db.models import Count, Q

from calendarapp.models.nurse import Nurse
from calendarapp.models.global_object import GlobalObject

class SanitationTask(models.Model):
    title = models.CharField(max_length=200)
    location = models.CharField(max_length=200)
    start_time = models.DateTimeField()
    end_time = models.DateTimeField()
    nurse = models.ForeignKey(
        Nurse,
        on_delete=models.SET_NULL,
        null=True,
        blank=True,
        related_name="sanitation_tasks",
    )
    department = models.ForeignKey(GlobalObject, on_delete=models.CASCADE)
    completed = models.BooleanField(default=False)

    class Meta:
        ordering = ["start_time"]

    def __str__(self) -> str:
        return f"{self.title} ({self.start_time:%Y-%m-%d})"

    @classmethod
    def least_loaded_nurse(cls, department: GlobalObject, date):
        return (
            Nurse.objects.filter(GlobalObject=department)
            .annotate(
                task_count=Count(
                    "sanitation_tasks",
                    filter=Q(sanitation_tasks__start_time__date=date),
                )
            )
            .order_by("task_count")
            .first()
        )

    def save(self, *args, **kwargs):
        if self.nurse is None and self.department_id and self.start_time:
            nurse = SanitationTask.least_loaded_nurse(
                self.department, self.start_time.date()
            )
            if nurse:
                self.nurse = nurse
        super().save(*args, **kwargs)
