# calendarapp/routing.py
from django.urls import re_path
from .consumers import RoleBasedNotificationConsumer, TypingConsumer

websocket_urlpatterns = [
    re_path(r'ws/notifications/$', RoleBasedNotificationConsumer.as_asgi()),
    re_path(r'ws/typing/$', TypingConsumer.as_asgi())
]