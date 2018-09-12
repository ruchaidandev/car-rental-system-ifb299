from django.db import models
from crcapp.models import Vehicle, Customer

class Vehicle_():
    #creates vehicle entry in the database using provided values
    def create(vehicleID_ ,makeName_, model_, series_, year_, newPrice_, enginesize_, fuelSystem_, tankcapacity_, power_, seatingCapacity_, standardTransmission_, bodyType_, driveType_, wheelbase_, storeID_):
        print('input' + str((vehicleID_ ,makeName_, model_, series_, year_, newPrice_, enginesize_, fuelSystem_, tankcapacity_, power_, seatingCapacity_, standardTransmission_, bodyType_, driveType_, wheelbase_, storeID_)))
        x = Vehicle(vehicleID = vehicleID_, makeName = makeName_, model = model_, series = series_, year = year_, newPrice = newPrice_, enginesize = enginesize_, fuelSystem = fuelSystem_, tankcapacity = tankcapacity_, power = power_, seatingCapacity = seatingCapacity_, standardTransmission = standardTransmission_, bodyType = bodyType_, driveType = driveType_, wheelbase = wheelbase_, storeID = storeID_)
        x.save()

    #searches for Vehicles that match the given arguments (NW)
    def search():
        for each in Vehicle.objects.all()[0:20]:
            return(each.vehicleID)

class Customer_():
    def create(customerID_, firstName_, lastName_, streetAddress_, cityAddress_, postCodeAddress_, stateAddress_, DOB_, driverLicenceNumber_, gender_, occupation_, phoneNumber_, email_, userName_, password_, dateJoined_, lastLogin_):
        x = Customer(customerID = customerID_, firstName = firstName_, lastName = lastName_, streetAddress = lastName_, cityAddress = cityAddress_, postCodeAddress = postCodeAddress_, stateAddress = stateAddress_, DOB = DOB_, driverLicenceNumber = driverLicenceNumber_, gender = gender_, occupation = occupation_, phoneNumber = phoneNumber_, email = email_, userName = userName_, password = password_, dateJoined = dateJoined_, lastLogin = lastLogin_)
        x.save()

    def modify(customerID_, firstName_, lastName_, streetAddress_, cityAddress_, postCodeAddress_, stateAddress_, DOB_, driverLicenceNumber_, gender_, occupation_, phoneNumber_, email_, userName_, password_, dateJoined_, lastLogin_):
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
            x.phoneNumber = phoneNumber_

        if (email_ != ""):
            x.email = email

        if(userName_ != ""):
            x.userName = userName_

        if(password_ != ""):
            x.password = password_

        if(dateJoined_ != ""):
            x.dateJoined = dateJoined_

        if(lastLogin_ != ""):
            x.lastLogin = lastLogin_

        x.save()

    #deletes Customer based on given ID
    def delete(ID):
        x = Customer.objects.get(customerID = ID)
        x.delete()

#    def search(arg):
#        if(arg == ""):
#            for each in Customer.objects.all()[0:20]:
#                print(each.firstName)

class Employees_:
    def create(employeeID_, firstName_, lastName_, streetAddress_, cityAddress_, postCodeAddress_, stateAddress_, DOB_, TFN_, phoneNumber_, email_, userName_, password_, userType_, dateJoined_, lastLogin_, storeID_):
        x = Employee(employeeID = employeeID_, firstName = firstName_, lastName = lastName_, streetAddress = streetAddress_, cityAddress = cityAddress_, postCodeAddress = postCodeAddress_, stateAddress = stateAddress_, DOB = DOB_, TFN = TFN_, phoneNumber = phoneNumber_, email = email_, userName = userName_, password = password_, userType = userType_, dateJoined = dateJoined_, lastLogin = lastLogin_, storeID = storeID_)
        x.save()

    def modify(employeeID_, firstName_, lastName_, streetAddress_, cityAddress_, postCodeAddress_, stateAddress_, DOB_, TFN_, phoneNumber_, email_, userName_, password_, userType_, dateJoined_, lastLogin_, storeID_):

        if(employeeID_ != ""):
            x.employeeID = employeeID_

        if(firstName_ != ""):
            x.firstName = firstName_

        if(lastName_ != ""):
            x.lastName = lastName_

        if(streetAddress_ != ""):
            x.streetAddress = streetAddress_

        if(cityAddress_ != ""):
            x.cityAddress = cityAddress_

        if(postCodeAddress_ != ""):
            x.postCodeAddress = postCodeAddress_

        if(stateAddress_ != ""):
            x.stateAddress = stateAddress_

        if(DOB_ != ""):
            x.DOB = DOB_

        if(TFN_ != ""):
            x.TFN = TFN_

        if(phoneNumber_ != ""):
            x.phoneNumber = phoneNumber_

        if(email_ != ""):
            x.email = email_

        if(userName_ != ""):
            x.userName = userName_

        if(password_ != ""):
            x.password = password_

        if(userType_ != ""):
            x.userType = userType_

        if(dateJoined_ != ""):
            x.dateJoined = dateJoined_

        if(lastLogin_ != ""):
            x.lastLogin = lastLogin_

        if(storeID_ != ""):
            x.storeID = storeID_

        x.save()
