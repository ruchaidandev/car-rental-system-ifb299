from django.shortcuts import render, redirect
from django.urls import path
from django.http import HttpResponseRedirect
from django.middleware.csrf import CsrfViewMiddleware
from django.contrib.auth.hashers import make_password

from . import views
from crcapp.controllers.authentication import Authentication

# Loading the index page
def index(request, messages="", mtype="i"):
    return render(request, 'index.html', {'msg': messages, 'mtype': mtype})

# Loading the home page
def home(request, messages=""):
    return render(request, 'home.html', {'msg': messages})

# Form action class for login, this will be used for employee login only
def loginEmployee(request):
    if request.method == 'POST':
        form = request.POST
        reason = CsrfViewMiddleware().process_view(request, None, (), {})
        if reason:
            return index(request, messages="Token verification failed.", mtype="d")
        else:
            if Authentication.login(request) != "NULL":
                return redirect("../home")
            else:
                return index(request,messages="Login failed.", mtype="d")
    else:
        return index(request, messages="Opps, something went wrong.", mtype="d")


# Logoff action
def logoff(request, messages=""):
    messages = "Successfully logged off.";
    return render(request, 'index.html', {'msg': messages, 'mtype': "i"})