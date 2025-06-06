# calendarapp/utils.py
from django.shortcuts import get_object_or_404
from calendarapp.models.global_object import GlobalObject
from calendarapp.models.nurse import Nurse
from calendarapp.models.day  import Day
from calendarapp.models.shift_type import ShiftType

def load_global_object(go_id):
    """
    Fetches the GlobalObject by PK and repopulates its
    internal relation-lists so that all .Nurse, .Day, .ShiftType, etc.
    are in memory with their methods and attributes.
    """
    go = get_object_or_404(GlobalObject, pk=go_id)

    # clear any stray in-memory state
    go.Nurse = []
    go.Day = []
    go.ShiftType = []
    go.Optimizer = []
    # …and any other relation lists you use…

    # re-populate from the DB
    # for nurse in Nurse.objects.filter(GlobalObject=go):
    #     go.set_relation_nurse(nurse)
    # for day in Day.objects.filter(GlobalObject=go):
    #     go.set_relation_day(day)
    # for st in ShiftType.objects.filter(GlobalObject=go):
    #     go.set_relation_shifttype(st)

    return go
