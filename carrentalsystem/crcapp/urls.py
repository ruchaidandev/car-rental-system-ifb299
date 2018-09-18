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
    url(r'^staff/login/(?P<option>\S+)/$', views.viewStaffLoginDetails, name='viewStaffLoginDetails'),

    # Getting staff from staff check 
    path('staff/store', views.getStaffFromStore, name='getStaffFromStore'),

    # Getting usernames
    path('staff/usernames/list', views.getUsernames, name='getUsernames'),

    # Searching 
    path('staff/search', views.searchStaff, name='searchStaff'),

    # changing username and password of employees 
    path('staff/createlogin', views.createLoginStaff, name='createLoginStaff'),

    ### Customer ###
    # For viewing the page
    path('customer/create', views.customerCreate, name='customerCreate'),



    ### Booking ###
    # For viewing page
    path('booking/order', views.bookingOrder, name='bookingOrder'),
    path('booking/orderConfirm', views.bookOrderConfirm, name='bookOrderConfirm'),





    ### Sample ------ DO NOT USE IN PRODUCTION ###
    path('sample', views.sample, name='staffCreateAction'),

    # Getting staff from staff check 
    path('email', views.email, name='email')


]