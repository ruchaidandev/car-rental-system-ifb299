from django.shortcuts import render, redirect
from django.urls import path
from django.http import HttpResponse,HttpResponseRedirect
from django.middleware.csrf import CsrfViewMiddleware
from django.views.decorators.csrf import csrf_exempt, csrf_protect # to use csrf exempt
from django.contrib.auth.hashers import make_password
from crcapp.models import Store,Employee # If the model is used in the view file
from django.utils import timezone
from django.core.serializers import serialize
from django.core.serializers.json import DjangoJSONEncoder

from . import views
from crcapp.controllers import authentication, staff


class LazyEncoder(DjangoJSONEncoder):
    def default(self, obj):
        return super().default(obj)


# Loading the index page
def index(request, messages="", mtype="i"):
    return render(request, 'index.html', {'msg': messages, 'mtype': mtype})

# Loading the home page
def home(request, messages=""):
    # Checking session exists
    if request.session.has_key('uid'):
        name = request.session['name']
        utype = request.session['utype']
        return render(request, 'home.html', {'msg': messages, 'name': name, 'utype': utype})
    else:
       return render(request, 'index.html', {'msg': 'Access denied!', 'mtype': "d"})
    

# Form action class for login, this will be used for employee login only
def loginEmployee(request):
    if request.method == 'POST':
        form = request.POST
        reason = CsrfViewMiddleware().process_view(request, None, (), {})
        if reason:
            return index(request, messages="Token verification failed.", mtype="d")
        else:
            result = authentication.Authentication.login(request)
            if result != "NULL":
                return redirect("../home")
            elif result == "NULL":
                return index(request,messages="Login failed.", mtype="d")
            else:
                return index(request,messages=result, mtype="d")
    else:
        return index(request, messages="Opps, something went wrong.", mtype="d")


# Logoff action
def logoff(request, messages=""):
    messages = "Successfully logged off."
    authentication.Authentication.logout(request)
    return render(request, 'index.html', {'msg': messages, 'mtype': "i"})

# Create staff member page
def staffCreate(request, messages="", mtype=""):
    # Checking session exists
    if request.session.has_key('uid'):
        name = request.session['name']
        utype = request.session['utype']
        stores = Store.objects.all()
        if request.method == 'POST':
            form = request.POST
            reason = CsrfViewMiddleware().process_view(request, None, (), {})
            # If the reason is true it means verification failed
            if reason:
                return render(request, 'staff/create.html', {'msg': 'Token verification failed!', 'mtype': "d"})
            else:
                result = staff.StaffController.createStaff(request)
                if result == True:
                    return render(request, 'staff/create.html', {'msg': 'Staff created.', 'mtype': "i"})
                elif result == False:
                    return render(request, 'staff/create.html', {'msg': 'Staff creation failed.', 'mtype': "d"})
                else:
                    return render(request, 'staff/create.html', {'msg': result, 'mtype': "a"})
        elif request.method == "GET":
            return render(request, 'staff/create.html', {'msg': messages, 'name': name, 'mtype': mtype, 'utype': utype, "stores": stores})
    else:
       return render(request, 'index.html', {'msg': 'Access denied!', 'mtype': "d"})
    
# Create customer member page
def customerCreate(request, messages="", mtype=""):
    # Checking session exists
    if request.session.has_key('uid'):
        name = request.session['name']
        utype = request.session['utype']
        stores = Store.objects.all()
        return render(request, 'customer/create.html', {'msg': messages, 'name': name, 'mtype': mtype, 'utype': utype, "stores": stores})
    else:
       return render(request, 'index.html', {'msg': 'Access denied!', 'mtype': "d"})

# Order Confirmation page
def bookOrder(request, messages=""):
    # Checking session exists
    if request.session.has_key('uid'):
        name = request.session['name']
        utype = request.session['utype']
        return render(request, 'booking/order.html', {'msg': messages, 'name': name, 'utype': utype})
    else:
       return render(request, 'index.html', {'msg': 'Access denied!', 'mtype': "d"})


# viewing the staff login management page
def viewStaffLogin(request):
     # Checking session exists
    if request.session.has_key('uid'):
        name = request.session['name']
        utype = request.session['utype']
        stores = Store.objects.all()
        return render(request, 'staff/loginmanagementview.html', {'name': name, 'utype': utype,'stores': stores})
    else:
       return render(request, 'index.html', {'msg': 'Access denied!', 'mtype': "d"})
       
   
# will return a json arrray to populate in datatable 
# post variable will get the value sent by ajax
@csrf_exempt # to disable csrf token check
def getStaffFromStore(request):
    # Checking session exists
     
    if request.method == 'POST':
        storeID = request.POST.get('storeID', '')
        employees = Employee.objects.raw("SELECT * FROM `crcapp_employee` WHERE storeID_id = '"+storeID+"' ORDER BY dateJoined DESC")
        return HttpResponse(serialize('json', employees, cls=LazyEncoder))
       
    else:
        return HttpResponse("NULL")


# get start details to the login page
def viewStaffLoginDetails(request, option):
    return HttpResponse(option)


# sample view only will be deleted later
def sample(request):
    stores = Store.objects.all()
    return render(request, 'sample/searchandtable.html', {'list': stores})
