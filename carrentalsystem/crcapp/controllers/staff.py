from crcapp.models import Employee,Customer
from django.contrib.auth.hashers import make_password, check_password
from django.core.exceptions import ValidationError
from django.contrib.sessions.models import Session

# Create functions related to staff
class Staff:

    # Creating a new staff account. If a username exist in the employee
    # database, do not create the account. else, create the account for
    # the employee 
    def createStaff(request):
        staffObj = Employee.objects.raw("SELECT employeeID FROM `crcapp_employee` ORDER BY employeeID DESC LIMIT 1")
        empID = staffObj.employeeID
        empID = empID[1:]
        
        empID = "E"+str(++empID).zfill(5)
        try:
            employeeID = empID
            firstname = request.POST.get("firstName")
            lastname = request.POST.get("lastName")
            streetAddress = request.POST.get("streetAddress")
            city = request.POST.get("city")
            postalCode = request.POST.get("postalCode")
            state = request.POST.get("state")
            DOB = request.POST.get("DOB")
            TFN = request.POST.get("TFN")
            phoneNumber = request.POST.get("phoneNumber")
            email = request.POST.get("email")
            username = ""
            password = ""
            userType = request.POST.get("userType")
            dateJoined = "now()"
            lastLogin = "now()"
            storeID = request.POST.get("storeID")
            staff = Employee(
                employeeID,
                firstname,
                lastname,
                streetAddress,
                city,
                postalCode,
                state,DOB,TFN,phoneNumber,email,username,password,userType,dateJoined,lastLogin, storeID
                )
            staff.full_clean()
            staff.save()
            return True
        except ValidationError as e:
            return e