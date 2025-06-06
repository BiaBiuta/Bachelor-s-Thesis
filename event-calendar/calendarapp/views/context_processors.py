# calendarapp/context_processors.py
from calendarapp.models.nurse import Nurse

def current_nurse_global_object(request):
    """
    Extrage EmployeeID din email (partea dinainte de '@'),
    găsește Nurse și returnează global_object_id în context.
    """
    print("am intratin current_nurse_global_object")
    if not request.user.is_authenticated:
        return {}
    email = request.user.email
    emp_id = email.split('@', 1)[0]
    print(emp_id)
    try:
        nurse = Nurse.objects.get(EmployeeID=emp_id)
        print(nurse.GlobalObject_id)
        return {'current_global_object_id': int(nurse.GlobalObject_id)}
    except Nurse.DoesNotExist:
        return {'current_global_object_id':0}
