from django.db import models

# Create your models here.
class Store(models.Model):
    storeID = models.CharField(max_length=10, primary_key=True)
    storeName = models.CharField(max_length=50)
    storePhone = models.BigIntegerField()
    street = models.CharField(max_length=70)
    city = models.CharField(max_length=16)
    state = models.IntegerField(max_length = 3)

class Customer(models.Model):
    customerID = models.CharField(max_length=10, primary_key=True)
    firstName = models.CharField(max_length=50)
    lastName = models.CharField(max_length=50)
    streetAddress = models.CharField(max_length=50)
    cityAddress = models.CharField(max_length=16)
    postCodeAddress = models.IntegerField(max_length = 4)
    stateAddress = models.CharField(max_length = 3)
    DOB = models.DateField(auto_now=False, auto_now_add=False)
    driverLicenceNumber = models.IntegerField(max_length = 9)
    gender = (('M', 'Male'),
              ('F', 'Female'),
              ('NIL', 'Not Given'))
    Occupation = models.CharField(max_length=50)
    phoneNumber = models.IntegerField(max_length = 10)
    email = models.EmailField()
    userName = models.CharField(max_length=50)
    password = models.CharField(max_length=50)
    userType = (('C','Customer'))
    dateJoined = models.DateField()
    lastLogin = models.DateField()


class Employee(models.Model):
    employeeID = models.CharField(max_length=10, primary_key=True)
    firstName = models.CharField(max_length=50)
    lastName = models.CharField(max_length=50)
    streetAddress = models.CharField(max_length=50)
    cityAddress = models.CharField(max_length=16)
    postCodeAddress = models.IntegerField(max_length = 4)
    stateAddress = models.CharField(max_length = 3)
    DOB = models.DateField(auto_now=False, auto_now_add=False)
    TFN = models.IntegerField(max_length=9)
    phoneNumber = models.IntegerField(max_length = 10)
    email = models.EmailField()
    userName = models.CharField(max_length=50)
    password = models.CharField(max_length=50)
    userType = (('BM', 'Boardmember'),
                ('SM','staff'))
    dateJoined = models.DateField()
    lastLogin = models.DateField()
    storeID = models.ForeignKey(Store, on_delete=models.DO_NOTHING,blank=True,null=True)
    

class Vehicle(models.Model):
    vehicleID = models.CharField(max_length=10, primary_key=True)
    makeName = models.CharField(max_length=16)
    model = models.CharField(max_length=16)
    series = models.CharField(max_length = 16)
    year = models.IntegerField(max_length=4)
    newPrice = models.DecimalField(max_digits=8,decimal_places=2)
    enginesize = models.DecimalField(max_digits=2,decimal_places=1)
    fuelSystem = models.CharField(max_length=16)
    tankcapacity = models.DecimalField(max_digits=3,decimal_places=1)
    power = models.IntegerField(max_length=3)
    seatingCapacity = models.IntegerField(max_length=2)
    standardTransmission = models.CharField(max_length=6)
    bodyType = models.CharField(max_length=16)
    driveType = models.CharField(max_length=3)
    wheelbase = models.IntegerField(max_length=4)

class In(models.Model):
    storeID = models.ForeignKey(Store, on_delete=models.DO_NOTHING,blank=True,null=True)
    vehicleID = models.ForeignKey(Vehicle, on_delete=models.DO_NOTHING,blank=True,null=True)
    
class Inspects(models.Model):
    employeeID = models.ForeignKey(Employee, on_delete=models.DO_NOTHING,blank=True,null=True)
    vehicleID = models.ForeignKey(Vehicle, on_delete=models.DO_NOTHING,blank=True,null=True)

class Rents(models.Model):
    customerID = models.ForeignKey(Customer, on_delete=models.DO_NOTHING,blank=True,null=True)
    vehicleID = models.ForeignKey(Vehicle, on_delete=models.DO_NOTHING,blank=True,null=True)

class Order(models.Model):
    orderID = models.CharField(max_length=12, primary_key=True)
    orderDate = models.DateField(auto_now=False, auto_now_add=False)
    pickupDate = models.DateField(auto_now=False, auto_now_add=False)
    returnDate = models.DateField(auto_now=False, auto_now_add=False)
    userType = (('Online', 'Online'),
                ('In-Store','In-Store'))
    customerID = models.ForeignKey(Customer, on_delete=models.DO_NOTHING,blank=True,null=True)
    pickupStoreID = models.ForeignKey(Store, related_name="pickupstore", on_delete=models.DO_NOTHING,blank=True,null=True)
    returnStoreID = models.ForeignKey(Store, related_name="returnstore", on_delete=models.DO_NOTHING,blank=True,null=True)
    employeeID = models.ForeignKey(Employee, on_delete=models.DO_NOTHING,blank=True,null=True)

class OrderFor(models.Model):   
    orderID = models.ForeignKey(Order, on_delete=models.DO_NOTHING,blank=True,null=True)
    carID = models.ForeignKey(Vehicle, on_delete=models.DO_NOTHING,blank=True,null=True)
    
class Invoice(models.Model):
    invoiceID = models.CharField(max_length=10, primary_key=True)
    amount = models.DecimalField(max_digits=12,decimal_places=2)
    paymentType = models.CharField(max_length=20)
    orderID = models.ForeignKey(Order, on_delete=models.DO_NOTHING,blank=True,null=True)
    