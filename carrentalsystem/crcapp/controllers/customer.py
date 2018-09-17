from django.db import models
from crcapp.models import Employee,Customer,Store
from django.contrib.auth.hashers import make_password, check_password
from django.core.exceptions import ValidationError
from django.contrib.sessions.models import Session
from django.utils import timezone

# Create functions related to staff
class CustomerController:
    def create():

        staffObj = Employee.objects.raw("SELECT customerID FROM `crcapp_customer` ORDER BY customerID DESC LIMIT 1")[0]
        x = staffObj.employeeID
        x = x[1:]
        x = int(x)+1;
        x = str(x).zfill(5)

        customerID_ = "C"+x
        firstName_ = request.POST.get("firstName")
        lastName_ = request.POST.get("lastName")
        streetAddress_ = request.POST.get("streetAddress")
        cityAddress_ = request.POST.get("cityAddress")
        postCodeAddress_ = request.POST.get("postalCodeAddres")
        stateAddress_ = request.POST.get("stateAddress")
        DOB_ = request.POST.get("DOB")
        driverLicenceNumber_ = request.POST.get("driverLicenceNumber")
        gender_ = request.POST.get("gender")
        occupation_ = request.POST.get("occupation")
        phoneNumber_ = request.POST.get("phoneNumber")
        email_ = request.POST.get("email")
        userName_ = request.POST.get("userName")
        password_ = request.POST.get("password")
        dateJoined_ = request.POST.get("dateJoined")
        lastLogin_ = request.POST.get("lastLogin")

        x = Customer(
        customerID = customerID_,
        firstName = firstName_,
        lastName = lastName_,
        streetAddress = lastName_,
        cityAddress = cityAddress_,
        postCodeAddress = postCodeAddress_,
        stateAddress = stateAddress_,
        DOB = DOB_,
        driverLicenceNumber = driverLicenceNumber_,
        gender = gender_,
        occupation = occupation_,
        phoneNumber = phoneNumber_,
        email = email_,
        userName = userName_,
        password = password_,
        dateJoined = dateJoined_,
        lastLogin = lastLogin_)

        x.save()

    def modify():

        customerID_ = request.POST.get("customerID")
        firstName_ = request.POST.get("firstName")
        lastName_ = request.POST.get("lastName")
        streetAddress_ = request.POST.get("streetAddress")
        cityAddress_ = request.POST.get("cityAddress")
        postCodeAddress_ = request.POST.get("postalCodeAddres")
        stateAddress_ = request.POST.get("stateAddress")
        DOB_ = request.POST.get("DOB")
        driverLicenceNumber_ = request.POST.get("driverLicenceNumber")
        gender_ = request.POST.get("gender")
        occupation_ = request.POST.get("occupation")
        phoneNumber_ = request.POST.get("phoneNumber")
        email_ = request.POST.get("email")
        userName_ = request.POST.get("userName")
        password_ = request.POST.get("password")
        dateJoined_ = request.POST.get("dateJoined")
        lastLogin_ = request.POST.get("lastLogin")

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

    def search(arg):
        if(arg == ""):
            for each in Customer.objects.all():
                print(
                each.customerID,
                each.firstName,
                each.lastName,
                each.streetAddress,
                each.cityAddress,
                each.postCodeAddress,
                each.stateAddress,
                each.DOB,
                each.driverLicenceNumber,
                each.gender,
                each.occupation,
                each.phoneNumber,
                each.email,
                each.userName,
                each.dateJoined,
                each.lastLogin)

        if(arg!= ""):
            customerID_min = arg[0]
            customerID_max = arg[1]
            firstName = arg[2]
            lastName = arg[3]
            streetAdress = arg[4]
            cityAddress = arg[5]
            postCodeAddress = arg[6]
            stateAddress = arg[7]
            DOB_min = arg[8]
            DOB_max = arg[9]
            driverLicenceNumber = arg[10]
            gender = arg[11]
            occupation = arg[12]
            phoneNumber = arg[13]
            email = arg[14]
            userName = arg[15]
            dateJoined_min = arg[16]
            dateJoined_max = arg[17]
            lastLogin_min = arg[18]
            lastLogin_max = arg[19]

            condition = " "

            if (customerID_min != ""):
                condition = condition + "customerID >= \'" + customerID_min + "\' AND "
            if (customerID_max != ""):
                condition = condition + "customerID <= \'" + customerID_max + "\' AND "
            if (firstName != ""):
                condition = condition + "firstName = \'" + firstName + "\' AND "
            if (lastName != ""):
                condition = condition + "lastName = \'" + lastName + "\' AND "
            if (streetAdress != ""):
                condition = condition + "streetAdress = \'" + streetAdress + "\' AND "
            if (cityAddress != ""):
                condition = condition + "cityAddress = \'" + cityAddress + "\' AND "
            if (postCodeAddress != ""):
                condition = condition + "postCodeAddress = \'" + postCodeAddress + "\' AND "
            if (stateAddress != ""):
                condition = condition + "stateAddress = \'" + stateAddress + "\' AND "
            if (DOB_min != ""):
                condition = condition + "DOB >= \'" + DOB_min + "\' AND "
            if (DOB_max != ""):
                condition = condition + "DOB <= \'" + DOB_max + "\' AND "
            if (driverLicenceNumber != ""):
                condition = condition + "driverLicenceNumber = \'" + driverLicenceNumber + "\' AND "
            if (gender != ""):
                condition = condition + "gender = \'" + gender + "\' AND "
            if (occupation != ""):
                condition = condition + "occupation = \'" + occupation + "\' AND "
            if (phoneNumber != ""):
                condition = condition + "phoneNumber = \'" + phoneNumber + "\' AND "
            if (email != ""):
                condition = condition + "email = \'" + email + "\' AND "
            if (userName != ""):
                condition = condition + "userName = \'" + userName + "\' AND "
            if (dateJoined_min != ""):
                condition = condition + "dateJoined >= \'" + dateJoined_min + "\' AND "
            if (dateJoined_max != ""):
                condition = condition + "dateJoined <= \'" + dateJoined_max + "\' AND "
            if (lastLogin_min != ""):
                condition = condition + "lastLogin >= \'" + lastLogin_min + "\' AND "
            if (lastLogin_max != ""):
                condition = condition + "lastLogin <= \'" + lastLogin_max + "\' AND "

            query = 'SELECT * FROM carrentaldb.crcapp_customer WHERE' + condition[:-5] +';'

            for each in Customer.objects.raw(query):
                print(
                each.customerID,
                each.firstName,
                each.lastName,
                each.streetAddress,
                each.cityAddress,
                each.postCodeAddress,
                each.stateAddress,
                each.DOB,
                each.driverLicenceNumber,
                each.gender,
                each.occupation,
                each.phoneNumber,
                each.email,
                each.userName,
                each.dateJoined,
                each.lastLogin)
