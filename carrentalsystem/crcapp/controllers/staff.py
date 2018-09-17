from crcapp.models import Employee,Customer,Store
from django.contrib.auth.hashers import make_password, check_password
from django.core.exceptions import ValidationError
from django.contrib.sessions.models import Session
from django.utils import timezone

# Create functions related to staff
class StaffController:

    # Creating a new staff account. If a username exist in the employee
    # database, do not create the account. else, create the account for
    # the employee 
    def createStaff(request):
        staffObj = Employee.objects.raw("SELECT employeeID FROM `crcapp_employee` ORDER BY employeeID DESC LIMIT 1")[0]
        empID = staffObj.employeeID
        empID = empID[1:]
        empID = int(empID)+1
        emploID = str(empID).zfill(5)

        try:
            employeeID_ = "E"+emploID
            firstName_ = request.POST.get("firstName")
            lastName_ = request.POST.get("lastName")
            streetAddress_ = request.POST.get("streetAddress")
            cityAddress_ = request.POST.get("city")
            postCodeAddress_ = request.POST.get("postalCode")
            stateAddress_ = request.POST.get("state")
            DOB_ = request.POST.get("dob")
            TFN_ = request.POST.get("TFN")
            phoneNumber_ = request.POST.get("phoneNumber")
            email_ = request.POST.get("email")
            userName_ = "NULL"
            password_ = "NULL"
            userType_ = request.POST.get("userType")
            dateJoined_ = timezone.now()
            lastLogin_ = timezone.now()
            storeID_ = request.POST.get("storeID")
            store = Store.objects.get(storeID=storeID_)
            
            # Sam change this according to your create function for now Iam adding this to test
            staff = Employee(employeeID = employeeID_, firstName = firstName_, lastName = lastName_, 
            streetAddress = streetAddress_, cityAddress = cityAddress_, postCodeAddress = postCodeAddress_, 
            stateAddress = stateAddress_, DOB = DOB_, TFN = TFN_, phoneNumber = phoneNumber_, email = email_, 
            userName = userName_, password = password_, userType = userType_, dateJoined = dateJoined_, 
            lastLogin = lastLogin_, storeID = store)
            vali = staff.full_clean()
            if vali:
                return vali
            else:
                staff.save()
                return True
            
            return False
            
        except ValidationError as e:
            return e