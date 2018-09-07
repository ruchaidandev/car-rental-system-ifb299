from crcapp.models import Employee,Customer
from django.contrib.auth.hashers import make_password, check_password
from django.core.exceptions import ValidationError
from django.contrib.sessions.models import Session

# Create functions related to staff
class staff:

    def createStaff(request, ):
        