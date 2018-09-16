from crcapp.models import Employee,Customer,Store
from django.contrib.auth.hashers import make_password, check_password
from django.core.exceptions import ValidationError
from django.contrib.sessions.models import Session
from django.utils import timezone

# Create functions related to staff
class VehicleController:
    #creates vehicle entry in the database using provided values
    def create(vehicleID_ ,makeName_, model_, series_, year_, newPrice_, enginesize_, fuelSystem_, tankcapacity_, power_, seatingCapacity_, standardTransmission_, bodyType_, driveType_, wheelbase_, storeID_):
        print('input' + str((vehicleID_ ,makeName_, model_, series_, year_, newPrice_, enginesize_, fuelSystem_, tankcapacity_, power_, seatingCapacity_, standardTransmission_, bodyType_, driveType_, wheelbase_, storeID_)))
        x = Vehicle(vehicleID = vehicleID_, makeName = makeName_, model = model_, series = series_, year = year_, newPrice = newPrice_, enginesize = enginesize_, fuelSystem = fuelSystem_, tankcapacity = tankcapacity_, power = power_, seatingCapacity = seatingCapacity_, standardTransmission = standardTransmission_, bodyType = bodyType_, driveType = driveType_, wheelbase = wheelbase_, storeID = storeID_)
        x.save()

    #searches for Vehicles that match the given arguments (NW)
    def search():
        for each in Vehicle.objects.all()[0:20]:
            return(each.vehicleID)
