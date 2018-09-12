from django.urls import path, include

from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('home', views.home, name='home'),
    path('login/employee', views.loginEmployee, name='login'),
    path('logoff', views.logoff, name='logoff'),
<<<<<<< HEAD
    path('staff/create', views.staffCreate, name='staffCreate'),
    
=======

    # For viewing the page
    path('staff/create', views.staffCreate, name='staffCreate'),
    path('customer/create', views.customerCreate, name='customerCreate'),

    # Action class to add the values to the db
    path('create/staff', views.staffCreateAction, name='staffCreateAction'),
    path('booking/order', views.bookOrder, name='bookOrder'),

>>>>>>> 8d87d6defa2ed98638a654a2ce2ca51b7b6db932
    path('sample', views.sample, name='staffCreateAction'),
]