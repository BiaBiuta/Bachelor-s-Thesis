# calendarapp/models.py

import re
from django.db import models
from django.conf import settings

class ScheduleGenerationLog(models.Model):
    department   = models.ForeignKey(
        'GlobalObject',
        on_delete=models.CASCADE,
        verbose_name="Unitate medicală"
    )
    user         = models.ForeignKey(
        settings.AUTH_USER_MODEL,
        on_delete=models.CASCADE,
        verbose_name="Utilizator"
    )
    generated_at = models.DateTimeField(auto_now_add=True)
    events_json  = models.JSONField(
        help_text="Lista evenimentelor (title, start, end, description)"
    )
    kpi_hard     = models.FloatField(null=True, blank=True)
    kpi_soft     = models.FloatField(null=True, blank=True)

    class Meta:
        ordering = ['-generated_at']
        verbose_name = "Log generare orar"
        verbose_name_plural = "Istoric generări orar"

    def __str__(self):
        # extragem un nume simplu din department pentru afişare
        name = re.sub(r'\s+', ' ', str(self.department))
        return f"{name} @ {self.generated_at:%Y-%m-%d %H:%M}"
