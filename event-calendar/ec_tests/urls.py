from django.urls import path, include
from django.http import HttpResponse

def dummy(request, *args, **kwargs):
    return HttpResponse('ok')

app_name = 'calendarapp'
urlpatterns = [
    path('calendar/', include(([
        path('event/<int:pk>/', dummy, name='event-detail'),
        path('instance/choose/', dummy, name='choose_instance'),
    ], 'calendarapp'), namespace='calendarapp')),
]
