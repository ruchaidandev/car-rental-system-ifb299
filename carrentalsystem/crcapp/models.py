from django.db import models
from django.core.validators import validate_email

# Create your models here.
class Store(models.Model):
    storeID = models.CharField(max_length=10, primary_key=True)
    storeName = models.CharField(max_length=50)
    storePhone = models.BigIntegerField()
    street = models.CharField(max_length=70)
    city = models.CharField(max_length=30)
    state = models.CharField(max_length = 30)

class Customer(models.Model):
    customerID = models.CharField(max_length=10, primary_key=True)
    firstName = models.CharField(max_length=50)
    lastName = models.CharField(max_length=50)
    streetAddress = models.CharField(max_length=50)
    cityAddress = models.CharField(max_length=16)
    postCodeAddress = models.IntegerField()
    stateAddress = models.CharField(max_length = 30)
    firstName = models.CharField(max_length=80)
    lastName = models.CharField(max_length=80)
    streetAddress = models.CharField(max_length=50, null=True)
    cityAddress = models.CharField(max_length=16, null=True)
    postCodeAddress = models.IntegerField( null=True)
    stateAddress = models.CharField(max_length = 30, null=True)
    DOB = models.DateField(auto_now=False, auto_now_add=False)
    driverLicenceNumber = models.BigIntegerField(null=True)
    gender = models.CharField(max_length=2)
    occupation = models.CharField(max_length=50, null=True)
    phoneNumber = models.BigIntegerField(null=True)
    email = models.EmailField(validators=[validate_email], null=True)
    userName = models.CharField(max_length=50,null=True)
    password = models.TextField(null=True)
    dateJoined = models.DateField(null=True)
    lastLogin = models.DateField(null=True)    
    disable = models.BooleanField(default=0)


class Employee(models.Model):
    employeeID = models.CharField(max_length=10, primary_key=True)
    firstName = models.CharField(max_length=50)
    lastName = models.CharField(max_length=50)
    streetAddress = models.CharField(max_length=50)
    cityAddress = models.CharField(max_length=50)
    postCodeAddress = models.IntegerField()
    stateAddress = models.CharField(max_length = 50)
    DOB = models.DateField(auto_now=False, auto_now_add=False)
    TFN = models.BigIntegerField()
    phoneNumber = models.BigIntegerField()
    email = models.EmailField(validators=[validate_email])
    userName = models.CharField(max_length=50,null=True)
    password = models.TextField(null=True)
    userType = models.CharField(max_length=16)
    dateJoined = models.DateField()
    lastLogin = models.DateField()
    disable = models.BooleanField(default=0)
    storeID = models.ForeignKey(Store, on_delete=models.DO_NOTHING,blank=True,null=True)


class Vehicle(models.Model):
    vehicleID = models.CharField(max_length=10, primary_key=True)
    makeName = models.CharField(max_length=50)
    model = models.CharField(max_length=50)
    series = models.CharField(max_length = 50)
    year = models.IntegerField()
    newPrice = models.DecimalField(max_digits=10,decimal_places=2)
    enginesize = models.DecimalField(max_digits=4,decimal_places=1)
    fuelSystem = models.CharField(max_length=50)
    tankcapacity = models.DecimalField(max_digits=7,decimal_places=1)
    power = models.IntegerField()
    seatingCapacity = models.IntegerField()
    standardTransmission = models.CharField(max_length=50)
    bodyType = models.CharField(max_length=50)
    driveType = models.CharField(max_length=30)
    wheelbase = models.IntegerField()
    storeID = models.ForeignKey(Store, on_delete=models.DO_NOTHING,blank=True,null=True)

class Inspects(models.Model):
    employeeID = models.ForeignKey(Employee, on_delete=models.DO_NOTHING,blank=True,null=True)
    vehicleID = models.ForeignKey(Vehicle, on_delete=models.DO_NOTHING,blank=True,null=True)
    class Meta:
        unique_together = ('employeeID', 'vehicleID')

class Order(models.Model):
    orderID = models.CharField(max_length=12, primary_key=True)
    orderDate = models.DateField(auto_now=False, auto_now_add=False)
    pickupDate = models.DateField(auto_now=False, auto_now_add=False)
    returnDate = models.DateField(auto_now=False, auto_now_add=False)
    orderType = models.CharField(max_length=16)
    customerID = models.ForeignKey(Customer, on_delete=models.DO_NOTHING,blank=True,null=True)
    pickupStoreID = models.ForeignKey(Store, related_name="pickupstore", on_delete=models.DO_NOTHING,blank=True,null=True)
    returnStoreID = models.ForeignKey(Store, related_name="returnstore", on_delete=models.DO_NOTHING,blank=True,null=True)
    employeeID = models.ForeignKey(Employee, on_delete=models.DO_NOTHING,blank=True,null=True)

class OrderFor(models.Model):
    orderID = models.ForeignKey(Order, on_delete=models.DO_NOTHING,blank=True,null=True)
    vehicleID = models.ForeignKey(Vehicle, on_delete=models.DO_NOTHING,blank=True,null=True)
    class Meta:
        unique_together = ('orderID', 'vehicleID')

class Invoice(models.Model):
    invoiceID = models.CharField(max_length=10, primary_key=True)
    amount = models.DecimalField(max_digits=12,decimal_places=2)
    paymentType = models.CharField(max_length=20)
    orderID = models.ForeignKey(Order, on_delete=models.DO_NOTHING,blank=True,null=True)
