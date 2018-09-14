from django.urls import path, include
from django.conf.urls import include, url

from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('home', views.home, name='home'),
    path('login/employee', views.loginEmployee, name='login'),
    path('logoff', views.logoff, name='logoff'),

    # For viewing the page
    path('staff/create', views.staffCreate, name='staffCreate'), # This will do both
    path('customer/create', views.customerCreate, name='customerCreate'),

    # Action class to add the values to the db
    path('booking/order', views.bookOrder, name='bookOrder'),

    path('staff/login', views.viewStaffLogin, name='viewStaffLogin'),
    # Getting staff from staff check 
    path('staff/store', views.getStaffFromStore, name='getStaffFromStore'),
    # Getting usernames
    path('staff/usernames/list', views.getUsernames, name='getUsernames'),
    # passing values in the url
    url(r'^staff/login/(?P<option>\S+)/$', views.viewStaffLoginDetails, name='viewStaffLoginDetails'),

    path('sample', views.sample, name='staffCreateAction'),

     # Getting staff from staff check 
    path('email', views.email, name='email')
]