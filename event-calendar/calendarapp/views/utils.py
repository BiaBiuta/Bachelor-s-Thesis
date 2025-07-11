from django.shortcuts import get_object_or_404
from calendarapp.models.global_object import GlobalObject
from calendarapp.models.nurse import Nurse
from calendarapp.models.day  import Day
from calendarapp.models.shift_type import ShiftType

def load_global_object(go_id):
    """
    repopularea obiectului GlobalObject si crearea relatiilor
    """
    go = get_object_or_404(GlobalObject, pk=go_id)
    go.Nurse = []
    go.Day = []
    go.ShiftType = []
    go.Optimizer = []
    # for nurse in Nurse.objects.filter(GlobalObject=go):
    #     go.set_relation_nurse(nurse)
    # for day in Day.objects.filter(GlobalObject=go):
    #     go.set_relation_day(day)
    # for st in ShiftType.objects.filter(GlobalObject=go):
    #     go.set_relation_shifttype(st)

    return go
