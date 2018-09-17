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

    def __str__(self):
        return self.choice_text

class Customer(models.Model):
    choice_text = 'Customer model'
    customerID = models.CharField(max_length=10, primary_key=True)
    firstName = models.CharField(max_length=50)
    lastName = models.CharField(max_length=50)
    streetAddress = models.CharField(max_length=50)
    cityAddress = models.CharField(max_length=16)
    postCodeAddress = models.IntegerField()
    stateAddress = models.CharField(max_length = 30)
    DOB = models.DateField(auto_now=False, auto_now_add=False)
    driverLicenceNumber = models.BigIntegerField()
    gender = models.CharField(max_length=2)
    occupation = models.CharField(max_length=50)
    phoneNumber = models.BigIntegerField()
    email = models.EmailField(validators=[validate_email])
    userName = models.CharField(max_length=50)
    password = models.TextField()
    dateJoined = models.DateField()
    lastLogin = models.DateField()

    def __str__(self):
            return self.choice_text


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
    userName = models.CharField(max_length=50)
    password = models.TextField()
    userType = models.CharField(max_length=16)
    dateJoined = models.DateField()
    lastLogin = models.DateField()
    storeID = models.ForeignKey(Store, on_delete=models.DO_NOTHING,blank=True,null=True)


class Vehicle(models.Model):
    vehicleID = models.CharField(max_length=10, primary_key=True)
    makeName = models.CharField(max_length=50)
    model = models.CharField(max_length=50)
    series = models.CharField(max_length = 50)
    year = models.IntegerField()
    newPrice = models.DecimalField(max_digits=10,decimal_places=2)
    enginesize = models.DecimalField(max_digits=2,decimal_places=1)
    fuelSystem = models.CharField(max_length=20)
    tankcapacity = models.DecimalField(max_digits=7,decimal_places=1)
    power = models.IntegerField()
    seatingCapacity = models.IntegerField()
    standardTransmission = models.CharField(max_length=10)
    bodyType = models.CharField(max_length=30)
    driveType = models.CharField(max_length=3)
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
