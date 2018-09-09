from django.db import models
from crcapp.models import Vehicle, Customer

class Vehicle_():
    #creates vehicle entry in the database using provided values
    def create(vehicleID_ ,makeName_, model_, series_, year_, newPrice_, enginesize_, fuelSystem_, tankcapacity_, power_, seatingCapacity_, standardTransmission_, bodyType_, driveType_, wheelbase_, storeID_):
        print('input' + str((vehicleID_ ,makeName_, model_, series_, year_, newPrice_, enginesize_, fuelSystem_, tankcapacity_, power_, seatingCapacity_, standardTransmission_, bodyType_, driveType_, wheelbase_, storeID_)))
        x = Vehicle(vehicleID = vehicleID_, makeName = makeName_, model = model_, series = series_, year = year_, newPrice = newPrice_, enginesize = enginesize_, fuelSystem = fuelSystem_, tankcapacity = tankcapacity_, power = power_, seatingCapacity = seatingCapacity_, standardTransmission = standardTransmission_, bodyType = bodyType_, driveType = driveType_, wheelbase = wheelbase_, storeID = storeID_)
        x.save()

    #searches for Vehicles that match the given arguments
    def search(arg):
        x = models.Vehicle.objects.filter(arg)
        for each in x:
            print(each)
            return(each)

class Customer_():
    def create(customerID_, firstName_, lastName_, streetAddress_, cityAddress_, postCodeAddress_, stateAddress_, DOB_, driverLicenceNumber_, gender_, occupation_, phoneNumber_, email_, userName_, password_, dateJoined_, lastLogin_):
        x = Customer(customerID=customerID_, firstName=firstName_, lastName=lastName_, streetAddress=lastName_, cityAddress=cityAddress_, postCodeAddress=postCodeAddress_, stateAddress=stateAddress_, DOB=DOB_, driverLicenceNumber=driverLicenceNumber_, gender=gender_, occupation=occupation_, phoneNumber=phoneNumber_, email=email_, userName=userName_, password=password_, dateJoined=dateJoined_, lastLogin=lastLogin_):
        x.save()

    def modify((customerID_, firstName_, lastName_, streetAddress_, cityAddress_, postCodeAddress_, stateAddress_, DOB_, driverLicenceNumber_, gender_, occupation_, phoneNumber_, email_, userName_, password_, dateJoined_, lastLogin_)):
        x = Customer.objects.get(customerID_)


        if (firstName_ != ""):
            x.firstName = firstName_

        if (lastName_ != ""):
            x.lastName = lastName_

        if (streetAddress_ != ""):
            x.streetAddress = streetAddress_

        if (cityAddress_ != ""):
            x.streetAddress = streetAddress_

        if (postCodeAddress_ != ""):
            x.postCodeAddress = postCodeAddress_

        if (stateAddress_ != ""):
            x.stateAddress = stateAddress_

        if (DOB_ != ""):
            x.DOB = DOB_

        if (driverLicenceNumber_ != ""):
            x.driverLicenceNumber = driverLicenceNumber_

        if (gender_ != ""):
            x.gender = gender_

        if (occupation_ != ""):
            x.occupation = occupation_

        if (phoneNumber_  != ""):
            
