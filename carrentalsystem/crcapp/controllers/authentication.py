from crcapp.models import Employee,Customer
from django.contrib.auth.hashers import make_password, check_password
from django.core.exceptions import ValidationError
from django.contrib.sessions.models import Session
from django.utils import timezone

class Authentication:

    def login(request, username=None, password=None):
    
        username = request.POST.get("username", "")
        password = request.POST.get("password", "")
        try:
            user = Employee.objects.get(userName=username)
            # Executing a full clean will validate all entries to be in the 
            # correct data fields as in model
            user.full_clean()            
            if check_password(password, user.password):
                if user.disable == 1:
                    return "Your account is disabled"
                else:
                    # Sets 2 hours expiry date for sessions 
                    request.session.set_expiry(7200) 
                    # setting session values
                    request.session['uid'] = user.employeeID
                    request.session['utype'] = user.userType
                    request.session['name'] = user.firstName+" "+user.lastName
                    user.lastLogin = timezone.now()
                    user.save()
                    return user.employeeID
            else:
                return "NULL"
        except Employee.DoesNotExist:
             return "NULL"
        except ValidationError as e:
            return e

    def logout(request):
        del request.session['uid']