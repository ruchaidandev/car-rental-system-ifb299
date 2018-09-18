from django.urls import path, include
from django.conf.urls import include, url

from . import views

urlpatterns = [

    ### Home ###
    path('', views.index, name='index'),
    path('home', views.home, name='home'),
    path('login/employee', views.loginEmployee, name='login'),
    path('logoff', views.logoff, name='logoff'),



    ### Staff ###
    # For viewing the page
    path('staff/create', views.staffCreate, name='staffCreate'),
    path('staff/login', views.viewStaffLogin, name='viewStaffLogin'),

    # Getting staff from staff check 
    path('staff/store', views.getStaffFromStore, name='getStaffFromStore'),

    # Getting usernames
    path('staff/usernames/list', views.getUsernames, name='getUsernames'),

    # passing values in the url
    url(r'^staff/login/(?P<option>\S+)/$', views.viewStaffLoginDetails, name='viewStaffLoginDetails'),

    # changing username and password of employees 
    path('staff/createlogin', views.createLoginStaff, name='createLoginStaff'),

    ### Customer ###
    # For viewing the page
    path('customer/create', views.customerCreate, name='customerCreate'),
    # For modifying existing customer details
    path('customer/modify', views.customerModify, name='customerModify'),



    ### Booking ###
    # For viewing page
    path('booking/orderConfirm', views.bookOrderConfirm, name='bookOrderConfirm'),





    ### Sample ------ DO NOT USE IN PRODUCTION ###
    path('sample', views.sample, name='staffCreateAction'),

    # Getting staff from staff check 
    path('email', views.email, name='email')


]