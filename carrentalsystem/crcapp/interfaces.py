from django.db import models
from crcapp.models import Vehicle

class Vehicle_():
    def search(arg):
        x = models.Vehicle.objects.filter(arg)
        for each in x:
            print(each)

    def create(vehicleID_ ,makeName_, model_, series_, year_, newPrice_, enginesize_, fuelSystem_, tankcapacity_, power_, seatingCapacity_, standardTransmission_, bodyType_, driveType_, wheelbase_, storeID_):
        print('input' + str((vehicleID_ ,makeName_, model_, series_, year_, newPrice_, enginesize_, fuelSystem_, tankcapacity_, power_, seatingCapacity_, standardTransmission_, bodyType_, driveType_, wheelbase_, storeID_)))
        x = Vehicle(vehicleID = vehicleID_, makeName = makeName_, model = model_, series = series_, year = year_, newPrice = newPrice_, enginesize = enginesize_, fuelSystem = fuelSystem_, tankcapacity = tankcapacity_, power = power_, seatingCapacity = seatingCapacity_, standardTransmission = standardTransmission_, bodyType = bodyType_, driveType = driveType_, wheelbase = wheelbase_, storeID = storeID_)
        print(x)
        x.save()
        print(working)
