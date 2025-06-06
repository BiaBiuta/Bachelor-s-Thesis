# calendarapp/templatetags/instance_extras.py

import os
import re
from django import template

register = template.Library()

@register.filter
def instance_number(path):
    """
    Primește un șir `path` (de exemplu, 'Instance12.txt' sau un filepath cu 'InstanceNN.txt').
    Returnează numărul extras din numele fișierului (ex. '12'), sau șir gol dacă nu se potrivește.
    """
               # ex: dacă path e '…/Instance12.txt', rămâne 'Instance12.txt'

    m = re.match(r'Instance(\d+)\.txt$', path)
    return m.group(1) if m else "<<"+path+">>"
