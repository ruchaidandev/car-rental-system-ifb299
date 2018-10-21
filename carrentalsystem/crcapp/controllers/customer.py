from django.db import models
from crcapp.models import Employee,Customer,Store
from django.contrib.auth.hashers import make_password, check_password
from django.core.exceptions import ValidationError
from django.contrib.sessions.models import Session
from django.utils import timezone



# Functions related to Customer
class CustomerController:
    def create(request , purpose=""):
        custObj = Customer.objects.raw("SELECT customerID FROM `crcapp_customer` ORDER BY customerID DESC LIMIT 1")[0]
        custID = custObj.customerID
        custID = custID[1:]
        custID = int(custID)+1
        custID = str(custID).zfill(7)
        try:
            customerID_ = "C"+custID
            firstName_ = request.POST.get("firstName")
            lastName_ = request.POST.get("lastName")
            gender_ = request.POST.get("gender")
            DOB_ = request.POST.get("DOB")


            if request.POST.get("streetAddress") == "":
                streetAddress_ = "NULL"
            else:
                streetAddress_ = request.POST.get("streetAddress")
            
            if request.POST.get("cityAddress") == "":
                cityAddress_ = "NULL"
            else:
                cityAddress_ = request.POST.get("cityAddress")
            
            if request.POST.get("postCodeAddress") == "":
                postCodeAddress_ = "NULL"
            else:
                postCodeAddress_ = request.POST.get("postCodeAddress")
            
            if request.POST.get("stateAddress") == "":
                stateAddress_ = "NULL"
            else:
                stateAddress_ = request.POST.get("stateAddress")
            
            if request.POST.get("driverLicenceNumber") == "":
                driverLicenceNumber_ = "NULL"
            else:
                driverLicenceNumber_ = request.POST.get("driverLicenceNumber")
            
            if request.POST.get("occupation") == "":
                occupation_ = "NULL"
            else:
                occupation_ = request.POST.get("occupation")
            
            if request.POST.get("phoneNumber") == "":
                phoneNumber_ = "NULL"
            else:
                phoneNumber_ = request.POST.get("phoneNumber")

            if request.POST.get("email") == "":
                email_ = "NULL"
            else:
                email_ = request.POST.get("email")
            
            if purpose == "singup":
                userName_ = request.POST.get("userName")
                password_ =  make_password(request.POST.get('password', ''))
                
            else:
                userName_ = "NULL"
                password_ =  "NULL"
            dateJoined_ = timezone.now()
            lastLogin_ = timezone.now() 

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
            lastLogin = lastLogin_,
            disable = 0)

            vali = customer.full_clean()

            if vali:
                return vali
            else:
                x.save()
                return True
            return False
        except ValidationError as e:
            return e

    def modify(request):

        customerID_ = request.POST.get("customerID")
        firstName_ = request.POST.get("firstName")
        lastName_ = request.POST.get("lastName")
        streetAddress_ = request.POST.get("streetAddress")
        cityAddress_ = request.POST.get("cityAddress")
        postCodeAddress_ = request.POST.get("postCodeAddress")
        stateAddress_ = request.POST.get("stateAddress")
        DOB_ = request.POST.get("dob")
        driverLicenceNumber_ = request.POST.get("driverLicenceNumber")
        gender_ = request.POST.get("gender")
        occupation_ = request.POST.get("occupation")
        phoneNumber_ = request.POST.get("phoneNumber")
        email_ = request.POST.get("email")

        existingCustomer = Customer.objects.get(customerID=customerID_)

        try:
            if (firstName_ != ""):
                existingCustomer.firstName = firstName_

            if (lastName_ != ""):
                existingCustomer.lastName = lastName_

            if (streetAddress_ != ""):
                existingCustomer.streetAddress = streetAddress_

            if (cityAddress_ != ""):
                existingCustomer.cityAddress = cityAddress_

            if (postCodeAddress_ != ""):
                existingCustomer.postCodeAddress = postCodeAddress_

            if (stateAddress_ != ""):
                existingCustomer.stateAddress = stateAddress_

            if (DOB_ != ""):
                existingCustomer.DOB = DOB_

            if (driverLicenceNumber_ != ""):
                existingCustomer.driverLicenceNumber = driverLicenceNumber_

            if (gender_ != ""):
                existingCustomer.gender = gender_

            if (occupation_ != ""):
                existingCustomer.occupation = occupation_

            if (phoneNumber_  != ""):
                existingCustomer.phoneNumber = phoneNumber_

            if (email_ != ""):
                existingCustomer.email = email_
            
            vali = existingCustomer.full_clean()
            if vali:
                return vali
            else:
                existingCustomer.save()
                return True 
            return False
        except ValidationError as e:
            return e.message_dict

    #deletes Customer based on given ID
    def delete(ID):
        x = Customer.objects.get(customerID = ID)
        x.delete()

    def search(arg):
        if(arg == "all"):
            for each in Customer.objects.all():
                return(
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

        if(arg!= "all"):
            customerID_min = request.POST.get("customerID_min")
            customerID_max = request.POST.get("customerID_max")
            firstName = request.POST.get("firstName")
            lastName = request.POST.get("lastName")
            streetAdress = request.POST.get("streetAdress")
            cityAddress = request.POST.get("cityAddress")
            postCodeAddress = request.POST.get("postCodeAddress")
            stateAddress = request.POST.get("stateAddress")
            DOB_min = request.POST.get("DOB_min")
            DOB_max = request.POST.get("DOB_max")
            driverLicenceNumber = request.POST.get("driverLicenceNumber")
            gender = request.POST.get("gender")
            occupation = request.POST.get("occupation")
            phoneNumber = request.POST.get("phoneNumber")
            email = request.POST.get("email")
            userName = request.POST.get("userName")
            dateJoined_min = request.POST.get("dateJoined_min")
            dateJoined_max = request.POST.get("dateJoined_max")
            lastLogin_min = request.POST.get("lastLogin_min")
            lastLogin_max = request.POST.get("lastLogin_max")

            condition = " "

            if (customerID_min != ""):
                condition = condition + "customerID >= \'" + customerID_min + "\' AND "
            if (customerID_max != ""):
                condition = condition + "customerID <= \'" + customerID_max + "\' AND "
            if (firstName != ""):
                condition = condition + "firstName LIKE \'%" + firstName + "%\' AND "
            if (lastName != ""):
                condition = condition + "lastName LIKE \'%" + lastName + "%\' AND "
            if (streetAdress != ""):
                condition = condition + "streetAdress LIKE \'%" + streetAdress + "%\' AND "
            if (cityAddress != ""):
                condition = condition + "cityAddress LIKE \'%" + cityAddress + "%\' AND "
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
                condition = condition + "occupation LIKE \'%" + occupation + "\' AND "
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
                return(
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

    def changePW(request):
        customerID_ = request.POST.get("customerID")
        password_ = make_password(request.POST.get('password', ''))

        existingCustomer = Customer.objects.get(customerID=customerID_)

        try:
            existingCustomer.password = password_
            
            vali = existingCustomer.full_clean()
            if vali:
                return vali
            else:
                existingCustomer.save()
                return True 
            return False
        except ValidationError as e:
            return e.message_dict