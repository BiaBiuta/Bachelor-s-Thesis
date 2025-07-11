# calendarapp/models/shift_request.py

from django.db import models
from django.conf import settings
from django.utils import timezone
from calendarapp.models.day import Day
from calendarapp.models.shift_type import ShiftType
from calendarapp.models.global_object import GlobalObject
from calendarapp.models.cereri.shift_option import ShiftOption
from calendarapp.models.nurse import Nurse

class ShiftRequest(models.Model):
    # Tipul cererii: on-request sau off-request
    REQUEST_TYPES = [
        ('ON',  'Shift On'),
        ('OFF', 'Shift Off'),
    ]
    # Statusul cererii
    STATUS = [
        ('P', 'Pending'),
        ('A', 'Approved'),
        ('D', 'Denied'),
    ]

    nurse       = models.ForeignKey(
        Nurse,
        on_delete=models.CASCADE,
        related_name='shift_requests'
    )
    department  = models.ForeignKey(
        GlobalObject,
        on_delete=models.CASCADE,
        related_name='shift_requests'
    )
    day         = models.ForeignKey(
        Day,
        on_delete=models.CASCADE,
        related_name='shift_requests'
    )
    shift_type  = models.ForeignKey(
        ShiftType,
        on_delete=models.CASCADE,
        related_name='shift_requests'
    )
    req_type    = models.CharField(
        max_length=4,
        choices=REQUEST_TYPES
    )
    weight      = models.FloatField()
    status      = models.CharField(
        max_length=1,
        choices=STATUS,
        default='P'
    )
    from_file   = models.BooleanField(
        default=False,
        help_text="True dacă cererea a fost validă (apărută) în fișierul original"
    )
    created_at  = models.DateTimeField(
        auto_now_add=True
    )
    updated_at  = models.DateTimeField(
        auto_now=True
    )

    class Meta:
        ordering = ['-created_at']
        verbose_name = "Shift Request"
        verbose_name_plural = "Shift Requests"

    def __str__(self):
        return (
            f"{self.get_req_type_display()} on {self.day.DayID} "
            f"for {self.nurse} [{self.get_status_display()}]"
        )

    def save(self, *args, **kwargs):
        """
        Determină automat from_file pe baza existenței
        unui ShiftOption identic.
        """
        # verificăm dacă există exact o opțiune în fișier
        exists = ShiftOption.objects.filter(
            nurse=self.nurse,
            department=self.department,
            day=self.day,
            shift_type=self.shift_type,
            req_type=self.req_type,
            weight=self.weight
        ).exists()
        self.from_file = exists
        super().save(*args, **kwargs)
