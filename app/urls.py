from . import views
from django.urls import path
from django.contrib.auth import views as auth_views
from django.urls import path,include

urlpatterns = [
    path('', views.index, name='index'),
     path('/', views.support, name='support'),
    path('generate_timetable/', views.timetable, name='generate_timetable'),
    path('get-user-id/', views.get_user_id, name='get_user_id'),
]
    
   
       

