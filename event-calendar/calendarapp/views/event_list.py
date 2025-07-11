import logging

from django.views.generic import ListView

from calendarapp.models import Event

logger = logging.getLogger(__name__)
class AllEventsListView(ListView):
    """ toata lista de evenimente """

    template_name = "calendarapp/events_list.html"
    model = Event

    def get_queryset(self):
        #daca e logat superuser, sa vada toate evenimentele
        if self.request.user.is_superuser:
            logger.debug("Superuser is viewing all events")
            return Event.objects.all()
        return Event.objects.get_all_events(user=self.request.user)


class RunningEventsListView(ListView):
    """ evenimentele care sunt in rulare """

    template_name = "calendarapp/events_list.html"
    model = Event

    def get_queryset(self):
        if self.request.user.is_superuser:
            logger.debug("Superuser is viewing running events")
            return Event.objects.get_all_running_events()
        return Event.objects.get_running_events(user=self.request.user)

class UpcomingEventsListView(ListView):
    """ evenimentele urmatoare """

    template_name = "calendarapp/events_list.html"
    model = Event

    def get_queryset(self):
        logger.debug(self.request.user.is_superuser)
        if self.request.user.is_superuser:
            logger.debug("Superuser is viewing upcoming events")
            return Event.objects.get_all_upcoming_events()
        return Event.objects.get_upcoming_events(user=self.request.user)
    
class CompletedEventsListView(ListView):
    """ evenimentele trecute si la care s-a participat """

    template_name = "calendarapp/events_list.html"
    model = Event

    def get_queryset(self):
        if self.request.user.is_superuser:
            logger.debug("Superuser is viewing completed events")
            return Event.objects.get_all_completed_events()
        return Event.objects.get_completed_events(user=self.request.user)
    


