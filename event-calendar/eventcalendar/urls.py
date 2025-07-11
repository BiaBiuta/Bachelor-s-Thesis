
from django.contrib import admin
from django.urls import path, include

from .views import DashboardView


urlpatterns = [
    path("", DashboardView.as_view(), name="dashboard"),
    path("admin/", admin.site.urls,name="admin"),
    path("accounts/", include("accounts.urls")),
    path("", include("calendarapp.urls")),

]
