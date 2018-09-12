from django.shortcuts import render, redirect
from django.urls import path
from django.http import HttpResponseRedirect
from django.middleware.csrf import CsrfViewMiddleware
from django.contrib.auth.hashers import make_password
from crcapp.models import Store # If the model is used in the view file

from . import views
from crcapp.controllers import authentication, staff

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
        return render(request, 'staff/create.html', {'msg': messages, 'name': name, 'mtype': mtype, 'utype': utype, "stores": stores})
    else:
       return render(request, 'index.html', {'msg': 'Access denied!', 'mtype': "d"})

# Register new staff action
def staffCreateAction(request, messages=""):
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
                return render(request, 'staff/create.html', {'msg': "Token verification failed.", 'name': name, 'mtype': "d", 'utype': utype, "stores": stores})
            else:
                result = staff.Staff.createStaff(request)
                if result:
                    return render(request, 'staff/create.html', {'msg': "Staff created.", 'name': name, 'mtype': "i", 'utype': utype, "stores": stores})
                else:
                    return render(request, 'staff/create.html', {'msg': result, 'name': name, 'mtype': "d", 'utype': utype, "stores": stores})
        else:
            return render(request, 'staff/create.html', {'msg': "Opps, something went wrong.", 'name': name, 'mtype': "d", 'utype': utype, "stores": stores})
         
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


# sample view only will be deleted later
def sample(request):
    stores = Store.objects.all()
    return render(request, 'sample/searchandtable.html', {'list': stores})
