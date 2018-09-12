from django.urls import path, include

from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('home', views.home, name='home'),
    path('login/employee', views.loginEmployee, name='login'),
    path('logoff', views.logoff, name='logoff'),
    # For viewing the page
    path('staff/create', views.staffCreate, name='staffCreate'),
    # Action class to add the values to the db
    path('create/staff', views.staffCreateAction, name='staffCreateAction'),
    
    path('sample', views.sample, name='staffCreateAction'),
]