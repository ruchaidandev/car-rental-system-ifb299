from django.urls import path, include, re_path
from django.conf.urls import include, url

from . import views

urlpatterns = [

    ### public web
    path('', views.index, name='index'),
    path('login', views.loginIndex, name='loginIndex'),
    path('signup', views.registerIndex, name='registerIndex'),
    path('stores', views.storesIndex, name='storesIndex'),
    path('vehicles', views.vehicleIndex, name='vehicleIndex'),
    url(r'^vehicle/(?P<option>\S+)$', views.getVehicleIndex, name='getVehicleIndex'),
    path('customer/usernames/list', views.getUsernamesCustomers, name='getUsernames'),

    ### Home ###
    path('management/home', views.home, name='home'),
    path('system/login/employee', views.loginEmployee, name='login'),
    path('system/logoff', views.logoff, name='logoff'),


    ### Staff ###
    # For viewing the page
    path('management/staff/create', views.staffCreate, name='staffCreate'),
    path('management/staff/login', views.viewStaffLogin, name='viewStaffLogin'),
    url(r'^management/staff/login/(?P<option>\S+)$', views.viewStaffLoginDetails, name='viewStaffLoginDetails'),
    url(r'^management/staff/activity/(?P<option>\S+)/(?P<empID>\S+)$', views.disableStaff, name='disableStaff'),
    # Getting staff from staff check 
    path('management/staff/store', views.getStaffFromStore, name='getStaffFromStore'),


    # Getting usernames
    path('management/staff/usernames/list', views.getUsernames, name='getUsernames'),

    # Searching 
    path('management/staff/search', views.searchStaff, name='searchStaff'),

    # changing username and password of employees 
    path('management/staff/createlogin', views.createLoginStaff, name='createLoginStaff'),

    # staff management page
    path('management/staff', views.getAllStaff, name='getAllStaff'),
    url(r'^management/staff/id/(?P<option>\S+)$', views.getStaff, name='getStaff'),

    ### Customer ###
    # For viewing all customers
    path('management/customer', views.viewCustomers, name='viewCustomers'),
    # For creating a new customer
    path('management/customer/create', views.customerCreate, name='customerCreate'),



    ### Booking ###
    # For viewing page
    path('management/booking/order', views.bookingOrder, name='bookingOrder'),
    path('management/booking/orderConfirm', views.bookOrderConfirm, name='bookOrderConfirm'),


    ### Vehicle ###
    # For inserting page
    path('management/vehicle', views.getAllVehicles, name='getAllVehicles'),
    path('management/vehicle/create', views.createVehicle, name='createVehicle'),
    path('management/vehicle/edit', views.editVehicle, name='editVehicle'),
    url(r'^management/vehicle/delete/(?P<option>\S+)$', views.deleteVehicle, name='deleteVehicle'),
    url(r'^management/vehicle/id/(?P<option>\S+)$', views.getVehicle, name='getVehicle'),

    ### Sample ------ DO NOT USE IN PRODUCTION ###
    path('management/sample', views.sample, name='staffCreateAction'),

    # Getting staff from staff check 
    path('management/email', views.email, name='email')


]