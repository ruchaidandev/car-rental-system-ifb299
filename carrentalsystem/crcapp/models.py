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
    firstName = models.Charfield(maxlength=32)
    lastName = models.Charfield(maxlength=32)
    streetAddress = models.CharField(maxlength=32)
    cityAddress = models.Charfield(maxlength=16)
    postCodeAddress = models.IntergerField(maxlength = 4)
    stateAddress = models.Charfield(maxlength = 3)
    DOB = models.DateField()
    driverLicenceNumber = models.IntergerField(maxlength = 9)
    gender = (('M', 'Male'),
              ('F', 'Female'),
              ('NIL', 'Not Given'))
    Occupation = 
