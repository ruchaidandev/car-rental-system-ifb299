from django.shortcuts import render
from django.urls import path

from . import views

def index(request):
    return render(request, 'index.html')

def home(request):
    return render(request, 'home.html')