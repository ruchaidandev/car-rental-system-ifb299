from django.urls import path, include, re_path
from django.conf.urls import include, url

from . import views

urlpatterns = [

    ### public web
    path('', views.index, name='index'),

    ### Home ###
    path('home', views.home, name='home'),
    path('login/employee', views.loginEmployee, name='login'),
    path('logoff', views.logoff, name='logoff'),


    ### Staff ###
    # For viewing the page
    path('staff/create', views.staffCreate, name='staffCreate'),
    path('staff/login', views.viewStaffLogin, name='viewStaffLogin'),
    url(r'^staff/login/(?P<option>\S+)$', views.viewStaffLoginDetails, name='viewStaffLoginDetails'),
    url(r'^staff/activity/(?P<option>\S+)/(?P<empID>\S+)$', views.disableStaff, name='disableStaff'),
    # Getting staff from staff check 
    path('staff/store', views.getStaffFromStore, name='getStaffFromStore'),


    # Getting usernames
    path('staff/usernames/list', views.getUsernames, name='getUsernames'),

    # Searching 
    path('staff/search', views.searchStaff, name='searchStaff'),

    # changing username and password of employees 
    path('staff/createlogin', views.createLoginStaff, name='createLoginStaff'),

    # staff management page
    path('staff', views.getAllStaff, name='getAllStaff'),
    url(r'^staff/id/(?P<option>\S+)$', views.getStaff, name='getStaff'),

    ### Customer ###
    # For creating a new customer
    path('customer/create', views.customerCreate, name='customerCreate'),
    # For modifying existing customer details
    path('customer/modify', views.customerModify, name='customerModify'),
    
    url(r'^customer/id/(?P<option>\S+)$', views.customerModify, name='customerModify'),
    # View all customers
    path('customer/search', views.viewCustomers, name='viewCustomers'),
    # Search customers
    path('customer', views.searchCustomers, name='searchCustomers'),



    ### Booking ###
    # For viewing page
    path('booking/order', views.bookingOrder, name='bookingOrder'),
    path('booking/orderConfirm', views.bookOrderConfirm, name='bookOrderConfirm'),


    ### Vehicle ###
    # For inserting page
    path('vehicle', views.getAllVehicles, name='getAllVehicles'),
    path('vehicle/create', views.createVehicle, name='createVehicle'),
    url(r'^vehicle/id/(?P<option>\S+)$', views.getVehicle, name='getVehicle'),

    ### Sample ------ DO NOT USE IN PRODUCTION ###
    path('sample', views.sample, name='staffCreateAction'),

    # Getting staff from staff check 
    path('email', views.email, name='email')


]