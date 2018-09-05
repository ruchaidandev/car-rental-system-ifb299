from crcapp.models import Employee,Customer
from django.contrib.auth.hashers import make_password, check_password

class Authentication:

    def login(request, username=None, password=None):
    
        username = request.POST.get("username", "")
        password = request.POST.get("password", "")
        try:
            user = Employee.objects.get(userName=username)
            if check_password(password, user.password):
                return user.employeeID
            else:
                return "NULL"
        except Employee.DoesNotExist:
             return "NULL"