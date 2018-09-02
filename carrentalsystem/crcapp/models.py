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
    firstName = models.CharField(max_length=32)
    lastName = models.CharField(max_length=32)
    streetAddress = models.CharField(max_length=32)
    cityAddress = models.CharField(max_length=16)
    postCodeAddress = models.IntergerField(max_length = 4)
    stateAddress = models.CharField(max_length = 3)
    DOB = models.DateField()
    driverLicenceNumber = models.IntergerField(max_length = 9)
    gender = (('M', 'Male'),
              ('F', 'Female'),
              ('NIL', 'Not Given'))
    Occupation = models.CharField(max_length=32)
    phoneNumber = models.IntergerField(max_length = 10)
    email = models.EmailField()


class Employee(models.Model):
    EmployeeID = models.IntergerField(primary_key=true)
    firstName = models.CharField(max_length=32)
    lastName = models.CharField(max_length=32)
    streetAddress = models.CharField(max_length=32)
    cityAddress = models.CharField(max_length=16)
    postCodeAddress = models.IntergerField(max_length = 4)
    stateAddress = models.CharField(max_length = 3)
    DOB = models.DateField()
    TFN = models.IntergerField(max_length=9)
    phoneNumber = models.IntergerField(max_length = 10)
    email = models.EmailField()

class Vehicles(models.Model):
    VehicleID = models.IntergerField(primary_key=True)
    makeName = models.CharField(max_length=16)
    model = models.CharField(max_length=16)
    series = models.CharField(max_length = 16)
    year = models.IntergerField(max_length=4)
    newPrice = models.DecimalField(max_length=8,decimal_places=2)
    enginesize = models.DecimalField(max_length=2,decimal_places=1)
    fuelSystem = models.CharField(max_length=16)
    tankcapacity = models.DecimalField(max_length=3,decimal_places=1)
    power = models.IntergerField(max_length=3)
    seatingCapacity = models.IntergerField(max_length=2)
    standardTransmission = models.CharField(max_length=6)
    bodyType = models.CharField(max_length=16)
    driveType = models.Charfield(max_length=3)
    wheelbase = models.IntergerField(max_length=4)
