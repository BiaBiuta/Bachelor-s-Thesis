from django.urls import path

from . import views

from calendarapp.views.approve_event import approve_event
from calendarapp.views.deny_event import deny_event
from calendarapp.views.views_chat import ChatView, chat_bubble, shift_table_fragment
app_name = "calendarapp"


urlpatterns = [
    path('dashboard/', views.DashboardView.as_view(), name='dashboard'),
    path("calender/<int:global_object_id>", views.CalendarViewNew.as_view(), name="calendar"),
    path("calender/calendar_user/<int:global_object_id>", views.CalendarViewNew.as_view(), name="calendar_user"),
    path("calenders/", views.CalendarView.as_view(), name="calendars"),
    path('delete_event/<int:event_id>/', views.delete_event, name='delete_event'),
    path('next_week/<int:event_id>/', views.next_week, name='next_week'),
    path('next_day/<int:event_id>/', views.next_day, name='next_day'),
    path("event/new/", views.create_event, name="event_new"),
    path("event/edit/<int:pk>/", views.EventEdit.as_view(), name="event_edit"),
    path("event/<int:event_id>/details/", views.event_details, name="event-detail"),
    # Calendar view
    path("concedii/", views.CalendarView.as_view(), name="calendar_concedii"),
    path("choose_emergency_requests/", views.choose_emergency_requests, name="choose_emergency_requests"),
    #preferinte user
    path("user_preferinte/", views.CalendarView.as_view(), name="user_preferinte"),
    path("cal/", views.timetable, name="timetable"),
    path('instances/', views.instance_list, name='instance_list'),
    # <path:> permite slash-uri în parametrul file_path
    path('instances_detail/<path:file_path>/', views.instance_detail, name='instance_detail'),
    path('instance/choose/', views.choose_instance, name='choose_instance'),
    path('instance/select/', views.select_instance, name='select_instance'),
    path('instnace/confirm/', views.confirm_schedule, name='confirm_schedule'),
    path('instnace/cancel/', views.cancel_schedule, name='cancel_schedule'),
    # path("schedule/view/<int:log_id>/", views.view_schedule, name="view_schedule"),
    path('schedule/log/<int:log_id>/events/',
         views.schedule_log_events,
         name='schedule_log_events'),

path(
        "add_eventmember/<int:event_id>", views.add_eventmember, name="add_eventmember"
    ),
    path(
        "event/<int:pk>/remove",
        views.EventMemberDeleteView.as_view(),
        name="remove_event",
    ),
    path("all-event-list/", views.AllEventsListView.as_view(), name="all_events"),
    path(
        "running-event-list/",
        views.RunningEventsListView.as_view(),
        name="running_events",
    ),
    path(
        "upcoming-event-list/",
        views.UpcomingEventsListView.as_view(),
        name="upcoming_events",
    ),
    path(
        "completed-event-list/",
        views.CompletedEventsListView.as_view(),
        name="completed_events",
    ),
    path('approve-event/<int:event_id>/', approve_event, name='approve-event'),
    path('deny-event/<int:event_id>/', deny_event, name='deny-event'),
    path('add_shift_request', views.add_shift_request, name='add_shift_request'),
    path('requests/shifts/', views.choose_shift_requests, name='choose_shift_requests'),
    path('requests/dayoffs/', views.choose_dayoff_requests, name='choose_dayoff_requests'),
    path('requests/submitted/', views.requests_submitted, name='requests_submitted'),
    path(
        'ajax/unit_details/<int:unit_id>/',
        views.unit_details_ajax,
        name='unit_details_ajax'
    ),
path('api/shift_types_with_deficit/', views.api_shift_types_with_deficit, name='api_shift_types_with_deficit'),
path("api/schedule/", views.schedule_view),
    # path('domains/', views.DomainDashboardView.as_view(), name='domain_dashboard'),
    # path('domains/<int:pk>/', views.DomainCalendarView.as_view(), name='domain_schedule'),
    path("chat/", views.ChatView.as_view(), name="chat"),
    path("scheduler/", views.SchedulerView.as_view(), name="scheduler"),
    path("bubble/", views.chat_bubble, name="bubble"),
    path("debug-box/", views.debug_box, name="debug-box"),
]
