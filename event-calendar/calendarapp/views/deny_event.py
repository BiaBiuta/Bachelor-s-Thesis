from django.shortcuts import get_object_or_404, redirect
from django.contrib.auth.decorators import user_passes_test
from calendarapp.models import Event

@user_passes_test(lambda u: u.is_superuser)
def deny_event(request, event_id):
    """Deny an event if the user is an admin."""
    event = get_object_or_404(Event, id=event_id)
    if request.method == "POST":
        event.delete()  # Alternatively, you can add a "denied" status field and update it here
        return redirect('calendarapp:all_events')  # Replace with the correct view name
    return redirect('calendarapp:all_events')