from django.urls import path, include

from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('home', views.home, name='home'),
    path('login/employee', views.loginEmployee, name='login'),
    path('logoff', views.logoff, name='logoff'),
    path('staff/create', views.staffCreate, name='staffCreate'),
    path('create/staff', views.staffCreateAction, name='staffCreateAction'),
    path('booking/order', views.bookOrder, name='bookOrder'),

    path('sample', views.sample, name='staffCreateAction'),
]