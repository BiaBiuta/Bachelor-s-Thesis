from django.db import models
from django.conf import settings

class EmergencyRequest(models.Model):
    STATUS = [
        ('P', 'Pending'),
        ('A', 'Approved'),
        ('D', 'Denied'),
    ]
    """
    Stochează o cerere de urgență pentru o anumită zi:
      - asistenți care trebuie puși OFF (eliminați de pe tură)
      - asistenți care trebuie chemați ON (au zi liberă aprobată)
    """
    date = models.DateField()
    # Vom salva ID-urile asistentului ca ManyToMany către modelul Nurse
    remove_nurses = models.ManyToManyField('Nurse', related_name='to_be_removed', blank=True)
    call_nurses = models.ManyToManyField('Nurse', related_name='to_be_called', blank=True)
    created_by = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    created_at = models.DateTimeField(auto_now_add=True)
    status = models.CharField(
        max_length=1,
        choices=STATUS,
        default='P'
    )
    def __str__(self):
        return f"EmergencyRequest pentru {self.date}"
