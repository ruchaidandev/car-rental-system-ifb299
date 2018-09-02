from django.db import models

# Create your models here.
class Users(models.Model):
    userID = models.IntergerField(primary_key=true)
    userName = models.CharField(max_length=32)
    password = models.CharField(max_length=32)
    userType = (('BM', 'Boardmember'),
                ('SM','staff member'),
                ('C','Customer'))
    dateJoined = models.DateField()
    lastLogin = models.DateField()

class Customer(models.Model):
    CustomerID = models.IntergerField(primary_key=true)
    firstName = models.Charfield(max_length=32)
    lastName = models.Charfield(max_length=32)
    streetAddress = models.CharField(max_length=32)
    cityAddress = models.Charfield(max_length=16)
    postCodeAddress = models.IntergerField(max_length = 4)
    stateAddress = models.Charfield(max_length = 3)
    DOB = models.DateField()
    driverLicenceNumber = models.IntergerField(max_length = 9)
    gender = (('M', 'Male'),
              ('F', 'Female'),
              ('NIL', 'Not Given'))
    Occupation = models.CharField(max_length=32)
    phoneNumber = models.IntergerField(max_length = 10)
    email = models.Charfield(max_length=64)


class Employee(models.Model):
    EmployeeID = models.IntergerField(primary_key=true)
    firstName = models.Charfield(max_length=32)
    lastName = models.Charfield(max_length=32)
    streetAddress = models.CharField(max_length=32)
    cityAddress = models.Charfield(max_length=16)
    postCodeAddress = models.IntergerField(max_length = 4)
    stateAddress = models.Charfield(max_length = 3)
    DOB = models.DateField()
    TFN = models.IntergerField(max_length=9)
    phoneNumber = models.IntergerField(max_length = 10)
    email = models.Charfield(max_length=64)
