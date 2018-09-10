from crcapp.models import Employee,Customer
from django.contrib.auth.hashers import make_password, check_password
from django.core.exceptions import ValidationError
from django.contrib.sessions.models import Session

# Create functions related to staff
class Staff:

    # Creating a new staff account. If a username exist in the employee
    # database, do not create the account. else, create the account for
    # the employee (Still in progress)
    def createStaff(request, username=None ):
        # username = request.POST.get("username", "")
        # try:
        #     staff = Employee.objects.get(userName=username)
        #     staff.full_clean()
        #     if staff != None:
        #         return False
        #     else:
        #         firstname = request.POST.get("firstName")
        #         lastname = request.POST.get("lastName")
        #         streetAddress = request.POST.get("streetAddress")
        #         city = request.POST.get("city")
        #         postalCode = request.POST.get("postalCode")
        #         state = request.POST.get("state")
        #         DOB = request.POST.get("DOB")
        #         TFN = request.POST.get("TFN")
        #         phoneNumber = request.POST.get("phoneNumber")
        #         email = request.POST.get("email")
        #         username = request.POST.get("username")
        #         password = request.POST.get("password")
        #         userType = request.POST.get("userType")
        #         dateJoined = timezone.now()
        #         lastLogin = timezone.now()
        #         newStaff = Employee(firstname,lastname,streetAddress,city,postalCode,state,DOB,TFN,phoneNumber,email,username,password,userType,dateJoined,lastLogin)
        #         newStaff.save()
        #         return True
        # except ValidationError as e:
        #     return e