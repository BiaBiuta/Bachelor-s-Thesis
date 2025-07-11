from django.shortcuts import get_object_or_404, redirect
from django.contrib.auth.decorators import user_passes_test
from calendarapp.models import Event

@user_passes_test(lambda u: u.is_superuser)
def deny_event(request, event_id):
    """dau deny la event daca administratorul nu vrea sa il accepte"""
    event = get_object_or_404(Event, id=event_id)
    if request.method == "POST":
        event.delete()
        return redirect('calendarapp:all_events')
    return redirect('calendarapp:all_events')