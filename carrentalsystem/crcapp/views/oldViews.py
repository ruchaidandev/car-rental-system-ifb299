from .modules import *

# Developer: Aidan
class LazyEncoder(DjangoJSONEncoder):
    def default(self, obj):
        return super().default(obj)

# Developer: Aidan
# Loading the index page
def index(request, messages="", mtype="i"):

    # Will get the session variables for the message
    # and delete it after wards
    msg = request.session.get('msg', '')
    mtp = request.session.get('mtype', '')
    if msg != "":
        messages =  msg
        del request.session['msg']
    if mtp != "":
        mtype = mtp
        del request.session['mtype']
    
    stores = Store.objects.all()
    vehicles = Vehicle.objects.order_by('-vehicleID')[:6]
    return render(request, 'public/index.html', {'msg': messages, 'mtype': mtype, 'stores': stores, 'vehicles': vehicles})


# Developer: Aidan
# Login page 
def loginIndex(request, messages="", mtype="i"):
     # Will get the session variables for the message
    # and delete it after wards
    msg = request.session.get('msg', '')
    mtp = request.session.get('mtype', '')
    if msg != "":
        messages =  msg
        del request.session['msg']
    if mtp != "":
        mtype = mtp
        del request.session['mtype']
    return render(request, 'public/login.html', {'msg': messages, 'mtype': mtype})

# Developer: Aidan
# Login page 
def registerIndex(request, messages="", mtype="i"):
    if request.method == 'POST':
        form = request.POST
        reason = CsrfViewMiddleware().process_view(request, None, (), {})
        # If the reason is true it means verification failed
        if reason:
            return render(request, 'public/register.html', {'msg': 'Token verification failed!', 'mtype': "d"})
        else:
            if request.POST.get("password") == request.POST.get("confirmpassword"):
               
                result = customer.CustomerController.create(request)
                if result == True:
                    return render(request, 'public/register.html', {'msg': 'Account created, please login.', 'mtype': "i"})
                elif result == False:
                    return render(request, 'public/register.html', {'msg': 'Opps, something went wrong. Please try again.', 'mtype': "d"})
                else:
                    return render(request, 'public/register.html', {'msg': result, 'mtype': "a"})
            else:
                return render(request, 'public/register.html', {'msg': 'Sorry, the passwords did not match.', 'mtype': "i"})
        return render(request, 'public/register.html', {'msg': messages, 'mtype': mtype})
    else:

        return render(request, 'public/register.html', {'msg': messages, 'mtype': mtype})

# Developer: Jax
# Login page 
def storesIndex(request, messages="", mtype="i"):
    NSW = Store.objects.filter(state = "New South Wales")
    QLD = Store.objects.filter(state = "Queensland")
    SA = Store.objects.filter(state = "South Australia")
    TAS = Store.objects.filter(state = "Tasmania")
    VIC = Store.objects.filter(state = "Victoria")

    return render(request, 'public/stores.html', {'msg': messages, 'mtype': mtype, 'NSW': NSW, 'QLD': QLD, 'SA': SA, 'TAS' : TAS, 'VIC' : VIC })

# Developer: Aidan
# get vehicle details to modify page
def getVehicleIndex(request, option, msg='',mtype=''):
    vehicle = Vehicle.objects.filter(vehicleID=option).values()[0]
    if vehicle['storeID_id'] != "":
        store = Store.objects.get(storeID = vehicle['storeID_id'] )
    else:
        store = { 'storeName' : "Not Found" }            
    return render(request, 'public/vehicle.html', {'msg': '', 'mtype': mtype, 'vehicle':vehicle, 'store':store})


# Developer: Aidan
# Login page 
def vehicleIndex(request, messages="", mtype="i"):
    vehicles_list = Vehicle.objects.order_by('-vehicleID')
    page = request.GET.get('page', 1)

    paginator = Paginator(vehicles_list, 18)
    try:
        vehicles = paginator.page(page)
    except PageNotAnInteger:
        vehicles = paginator.page(1)
    except EmptyPage:
        vehicles = paginator.page(paginator.num_pages)

    return render(request, 'public/vehicles.html', {'msg': messages, 'mtype': mtype, 'vehicles': vehicles })



    

# Developer: Aidan
# Loading the home page
def home(request, messages=""):
    # Checking session exists
    if request.session.has_key('uid'):
        name = request.session['name']
        utype = request.session['utype']
        
        msg = request.session.get('msg', '')
        mtype = request.session.get('mtp', '')
        if msg != "":
            messages =  msg
            del request.session['msg']
        if mtype != "":
            del request.session['mtp']

        return render(request, 'home.html', {'msg': messages, 'mtype': mtype,'name': name, 'utype': utype})
    else:
       return notLoggedIn(request)
    

# Developer: Aidan
# Form action class for login, this will be used for employee login only
def login(request):
    if request.method == 'POST':
        form = request.POST
        reason = CsrfViewMiddleware().process_view(request, None, (), {})
        if reason:
            messages = "Token verification failed."
            request.session['msg'] = messages
            request.session['mtype'] = 'd'
            return redirect('/login')
        else:
            result = authentication.Authentication.login(request)
            if result != "NULL":
                return redirect("/management/home")
            elif result == "NULL":
                messages = "Login failed."
                request.session['msg'] = messages
                request.session['mtype'] = 'd'
                return redirect('/login')
            else:
                messages = result
                request.session['msg'] = messages
                request.session['mtype'] = 'd'
                return redirect('/login')
    else:
        messages = "Opps, something went wrong."
        request.session['msg'] = messages
        request.session['mtype'] = 'd'
        return redirect('/login')


# Developer: Aidan
@csrf_exempt # to disable csrf token check
def disableStaff(request, option, empID):
    if request.session.has_key('uid'):
        name = request.session['name']
        utype = request.session['utype']
        if utype == "Manager" or utype == "Developer":
            staff = Employee.objects.get(employeeID = empID)
            if option == "disable":
                staff.disable = 1
            else:
                staff.disable = 0
            staff.save()
            return redirect('/staff/login/'+empID)
        else:
            return accessDeniedHome(request)
    else:
        return notLoggedIn(request)





# Developer: Jax
# Create staff member page
def staffCreate(request, messages="", mtype=""):
    # Checking session exists
    if request.session.has_key('uid'):
        name = request.session['name']
        utype = request.session['utype']
        if utype == "Manager" or utype == "Developer":
            stores = Store.objects.all()
            if request.method == 'POST':
                form = request.POST
                reason = CsrfViewMiddleware().process_view(request, None, (), {})
                # If the reason is true it means verification failed
                if reason:
                    return render(request, 'staff/create.html', {'msg': 'Token verification failed!', 'mtype': "d"})
                else:
                    result = staff.StaffController.createStaff(request)
                    if result == True:
                        return render(request, 'staff/create.html', {'msg': 'Staff created.', 'mtype': "i"})
                    elif result == False:
                        return render(request, 'staff/create.html', {'msg': 'Staff creation failed.', 'mtype': "d"})
                    else:
                        return render(request, 'staff/create.html', {'msg': result, 'mtype': "a"})
            elif request.method == "GET":
                return render(request, 'staff/create.html', {'msg': messages, 'name': name, 'mtype': mtype, 'utype': utype, "stores": stores})
        else:
            return accessDeniedHome(request)
    else:
       return notLoggedIn(request)


# Developer: Aidan
# get all staff
def getAllStaff(request, messages="", mtype=""):
    if request.session.has_key('uid'):
        name = request.session['name']
        utype = request.session['utype']
        if utype == "Manager" or utype == "Developer":
            stores = Store.objects.all()
            employees = Employee.objects.all()
            return render(request, 'staff/staffmanagementview.html', {'msg': messages, 'name': name, 'mtype': mtype, 'utype': utype, "employees":employees, "stores": stores})
        else:
            accessDeniedHome(request)
    else:
       notLoggedIn(request)


# Developer: Aidan
# save changes of staff
def changeStaffDetails(request, option,  name, utype, msg='',mtype=''):
    utype = request.session['utype']
    if utype == "Manager" or utype == "Developer":
        if request.method == 'POST':
            employee = Employee.objects.filter(employeeID=option).values()[0]
            stores = Store.objects.all()
            reason = CsrfViewMiddleware().process_view(request, None, (), {})
            # If the reason is true it means verification failed
            if reason:
                return render(request, 'staff/staffdetailview.html', {'name': name, 'utype': utype,'msg': 'Token verification failed!', 'mtype': "d",'employee':employee, 'stores':stores})
            else:
                result = staff.StaffController.modify(request, option)
                if result == True:
                    return render(request, 'staff/staffdetailview.html', {'name': name, 'utype': utype,'msg': 'Changes saved.', 'mtype': "i",'employee':employee, 'stores':stores})
                elif result == False:
                    return render(request, 'staff/staffdetailview.html', {'name': name, 'utype': utype,'msg': 'Could not save all changes.', 'mtype': "d",'employee':employee, 'stores':stores})
                else:
                    return render(request, 'staff/staffdetailview.html', {'name': name, 'utype': utype,'msg': result, 'mtype': "a", 'employee':employee, 'stores':stores})
    else:
        return accessDeniedHome(request)

# Developer: Aidan
# get start details to the staff management page
def getStaff(request, option, msg='', mtype=''):
    if request.session.has_key('uid'):
        name = request.session['name']
        utype = request.session['utype']
        if utype == "Manager" or utype == "Developer":
            if request.method == 'POST':
                return changeStaffDetails(request, option, msg, mtype, name, utype)
            elif request.method == 'GET':
                employee = Employee.objects.filter(employeeID=option).values()[0]
                stores = Store.objects.all()
                
                return render(request, 'staff/staffdetailview.html', {'name': name, 'utype': utype,  'msg': '', 'mtype': mtype, 'employee':employee, 'stores':stores})
        else:
            return accessDeniedHome(request)
    else:
       return notLoggedIn(request)



# Developer: Jax
# Order Confirmation page
def bookOrderConfirm(request, messages=""):
    # Checking session exists
    if request.session.has_key('uid'):
        name = request.session['name']
        utype = request.session['utype']
        return render(request, 'booking/orderConfirm.html', {'msg': messages, 'name': name, 'utype': utype})
    else:
       return notLoggedIn(request)


# Developer: Aidan
# viewing the staff login management page
def viewStaffLogin(request):
     # Checking session exists
    if request.session.has_key('uid'):
        name = request.session['name']
        utype = request.session['utype']
        if utype == "Manager" or utype == "Developer":
            stores = Store.objects.all()
            return render(request, 'staff/loginmanagementview.html', {'name': name, 'utype': utype,'stores': stores})
        else:
            return accessDeniedHome(request)
    else:
       return notLoggedIn(request)
       
   
   
# Developer: Aidan
# will return a json arrray to populate in datatable 
# post variable will get the value sent by ajax
@csrf_exempt # to disable csrf token check
def getStaffFromStore(request):
    # Checking session exists
  
    if request.method == 'POST':
        storeID = request.POST.get('storeID', '')
        employees = Employee.objects.raw("SELECT * FROM `crcapp_employee` WHERE storeID_id = '"+storeID+"' ORDER BY dateJoined DESC")
        return HttpResponse(serialize('json', employees, cls=LazyEncoder))
     
    else:
        return HttpResponse("NULL")


# Developer: Aidan
# will return a json arrray of the login usernames
@csrf_exempt # to disable csrf token check
def getUsernames(request):
    # Checking session exists
     
    if request.method == 'POST':
        employees = Employee.objects.all()
        return HttpResponse(serialize('json', employees, cls=LazyEncoder))
       
    else:
        return HttpResponse("NULL")

# Developer: Aidan
# will return a json arrray of the login usernames
@csrf_exempt # to disable csrf token check
def getUsernamesCustomers(request):
    # Checking session exists
     
    if request.method == 'POST':
        customer = Customer.objects.all()
        return HttpResponse(serialize('json', customer, cls=LazyEncoder))
       
    else:
        return HttpResponse("NULL")


# Developer: Aidan
# get start details to the login page
def viewStaffLoginDetails(request, option, msg='',mtype=''):
    if request.session.has_key('uid'):
        name = request.session['name']
        utype = request.session['utype']
        if utype == "Manager" or utype == "Developer":
            employee = Employee.objects.filter(employeeID=option).values()[0]
            store = Store.objects.filter(storeID=employee['storeID_id']).values()[0]
            
            return render(request, 'staff/loginstaffview.html', {'name': name, 'utype': utype,  'msg': msg, 'mtype': mtype, 'employee':employee, 'store':store})
        else:
            return accessDeniedHome(request)
    else:
       return notLoggedIn(request)


# Developer: Jax
# Searching for staff
def searchStaff(request, msg='',mtype=''):
    if request.session.has_key('uid'):
        name = request.session['name']
        utype = request.session['utype']
        fields = Employee._meta.get_fields()
        employees = Employee.objects.all()

        # if request.method == 'POST':
        #     return changeStaffDetails(request, option, msg, mtype, name, utype)
        # elif request.method == 'GET':
        #     employee = Employee.objects.filter(employeeID=option).values()[0]
        #     stores = Store.objects.all()
        return render(request, 'staff/search.html', {'fields': fields}, {'employees': employees})
    else:
       return notLoggedIn(request)


# Developer: Jax
# Booking page
def bookingOrder(request):
    vehicles = Vehicle.objects.all()
    return render(request, 'booking/order.html', {'vehicles': vehicles})


# Developer: Aidan
# emails message will contain what to send and to whom 
# message, id is for the employee id or customer id
# by default it is sent to employees
def email(request, message="Default Message", id = "E00001", isEmployee=True):
    if request.session.has_key('uid'):
        name = request.session['name']
        utype = request.session['utype']
        date = timezone.now()
        date_un = date.strftime("%Y%m%d")
        if isEmployee:
            items = Employee.objects.filter(employeeID=id).values()[0]
        else:
            items = Customer.objects.filter(customerID=id).values()[0]
        
        return render(request, 'emaillayout.html', {'name': name, 'utype': utype, 'msg': '', 'mtype': '', 'date':date, 'date_un': date_un, 'item':items, 'msgemail':message})
    else:
       return notLoggedIn(request)


# Developer: Aidan
# creating the login details of the employee
def createLoginStaff(request):
    if request.session.has_key('uid'):
        name = request.session['name']
        utype = request.session['utype']
        if utype == "Manager" or utype == "Developer":
            employee = Employee.objects.filter(employeeID=request.POST.get("empID", '')).values()[0]
            store = Store.objects.filter(storeID=employee['storeID_id']).values()[0]
            if request.method == 'POST':
                reason = CsrfViewMiddleware().process_view(request, None, (), {})
                # If the reason is true it means verification failed
                if reason:
                    return render(request, 'staff/loginstaffview.html', {'name': name, 'utype': utype, 'msg': 'Token verification failed!', 'mtype': 'd', 'employee':employee, 'store':store})
                else:
                    result = staff.StaffController.changeLoginDetails(request, make_password(request.POST.get('password', '')))
                    if result == True:
                        msg = { "subject": "", "message":""}
                        msg['subject'] = "Your welcome guide for using the system."
                        msg['message'] = "Good news. Your new account is ready for you to use. Below you will find your account details and additional information you may need as you get started. You can manage your profile by login to the system."
                        msg['message'] += '</p><p class="ml-2 pl-5"><b>Username: </b> '+request.POST.get("username", '')+'<br><b>Password: </b> '+ request.POST.get("password", '')
                        
                        return email(request, msg, request.POST.get("empID",''))
                    elif result == False:
                        return render(request, 'staff/loginstaffview.html', {'name': name, 'utype': utype, 'msg': 'Opps, something happened, please try again later.', 'mtype': 'd', 'employee':employee, 'store':store})
                    else:
                        return render(request, 'staff/loginstaffview.html', {'name': name, 'utype': utype, 'msg': result, 'mtype': 'd', 'employee':employee, 'store':store})
            elif request.method == "GET":
                return render(request, 'staff/loginstaffview.html', {'name': name, 'utype': utype, 'msg': 'HTTP request error', 'mtype': 'd', 'employee':employee, 'store':store})
        else:
            return accessDeniedHome(request)
    else:
       return notLoggedIn(request)

# Developer: Aidan
# sample view only will be deleted later ------ DO NOT USE IN PRODUCTION
def sample(request):
    stores = Store.objects.all()
    return render(request, 'sample/searchandtable.html', {'list': stores})


# Developer: Aidan 
# Create vehicle member page
def createVehicle(request, messages="", mtype=""):
    # Checking session exists
    if request.session.has_key('uid'):
        name = request.session['name']
        utype = request.session['utype']
        if utype != "Customer":
            stores = Store.objects.all()
            if request.method == 'POST':
                reason = CsrfViewMiddleware().process_view(request, None, (), {})
                # If the reason is true it means verification failed
                if reason:
                    return render(request, 'vehicle/create.html', {'msg': 'Token verification failed!', 'mtype': "d"})
                else:
                    result = vehicle.VehicleController.create(request)
                    if result == True:
                        return render(request, 'vehicle/create.html', {'msg': 'Vehicle inserted.', 'mtype': "i"})
                    elif result == False:
                        return render(request, 'vehicle/create.html', {'msg': 'Vehicle insertion failed.', 'mtype': "d"})
                    else:
                        return render(request, 'vehicle/create.html', {'msg': result, 'mtype': "a"})
            elif request.method == "GET":
                return render(request, 'vehicle/create.html', {'msg': messages, 'name': name, 'mtype': mtype, 'utype': utype, 'stores': stores})
        else:
            return accessDeniedHome(request) 
    else:
       return notLoggedIn(request)

# Developer: Aidan 
# edit changes
def editVehicle(request, messages="", mtype=""):
    # Checking session exists
    if request.session.has_key('uid'):
        name = request.session['name']
        utype = request.session['utype']
        if utype != "Customer":
            stores = Store.objects.all()
            if request.method == 'POST':
                reason = CsrfViewMiddleware().process_view(request, None, (), {})
                # If the reason is true it means verification failed
                if reason:
                    return render(request, 'vehicle/vehicleDetail.html', {'msg': 'Token verification failed!', 'mtype': "d"})
                else:
                    result = vehicle.VehicleController.modify(request, request.POST.get("vID"))
                    if result == True:
                        return render(request, 'vehicle/vehicleDetail.html', {'msg': 'Vehicle updated.', 'mtype': "i"})
                    elif result == False:
                        return render(request, 'vehicle/vehicleDetail.html', {'msg': 'Vehicle updating failed.', 'mtype': "d"})
                    else:
                        return render(request, 'vehicle/vehicleDetail.html', {'msg': result, 'mtype': "a"})
            
        else:
            return accessDeniedHome(request) 
    else:
       return notLoggedIn(request)

@csrf_exempt 
def deleteVehicle(request, option):
    utype = request.session['utype']
    if utype != "Customer":
        result = vehicle.VehicleController.delete(option)
        if result:
            return HttpResponse("True")
        else:
            return HttpResponse("False")
    else:
        return accessDeniedHome(request)


# Developer: Aidan
# save changes of vehicle
def changeVehicleDetails(request, option, utype, msg='',mtype=''):
    utype = request.session['utype']
    if utype != "Customer":
        if request.method == 'POST':
            vehicle = Vehicle.objects.filter(vehicleID=option).values()[0]
            stores = Store.objects.all()
            reason = CsrfViewMiddleware().process_view(request, None, (), {})
            # If the reason is true it means verification failed
            if reason:
                return render(request, 'vehicle/vehicleDetail.html', {'name': name, 'utype': utype,'msg': 'Token verification failed!', 'mtype': "d",'vehicle':vehicle, 'stores':stores})
            else:
                result = vehicle.VehicleController.modify(request, option)
                if result == True:
                    return render(request, 'vehicle/vehicleDetail.html', {'name': name, 'utype': utype,'msg': 'Changes saved.', 'mtype': "i",'vehicle':vehicle, 'stores':stores})
                elif result == False:
                    return render(request, 'vehicle/vehicleDetail.html', {'name': name, 'utype': utype,'msg': 'Could not save all changes.', 'mtype': "d",'vehicle':vehicle, 'stores':stores})
                else:
                    return render(request, 'vehicle/vehicleDetail.html', {'name': name, 'utype': utype,'msg': result, 'mtype': "a", 'vehicle':vehicle, 'stores':stores})
    else:
        return accessDeniedHome(request)

# Developer: Aidan
# get all vehicles to the view page
def getAllVehicles(request, messages="", mtype=""):
    if request.session.has_key('uid'):
        name = request.session['name']
        utype = request.session['utype']
        utype = request.session['utype']
        if utype != "Customer":
            stores = Store.objects.all()
            vehicles = Vehicle.objects.all()
            return render(request, 'vehicle/vehiclemanagementview.html', {'msg': messages, 'name': name, 'mtype': mtype, 'utype': utype, "vehicles":vehicles, "stores": stores})
        else:
            return accessDeniedHome(request)
    else:
       return notLoggedIn(request)

# Developer: Aidan
# get vehicle details to modify page
def getVehicle(request, option, msg='',mtype=''):
    if request.session.has_key('uid'):
        name = request.session['name']
        utype = request.session['utype']
        utype = request.session['utype']
        if utype != "Customer":
            if request.method == 'POST':
                return changeVehicleDetails(request, option, msg, mtype, name, utype)
            elif request.method == 'GET':
                vehicle = Vehicle.objects.filter(vehicleID=option).values()[0]
                stores = Store.objects.all()
                
                return render(request, 'vehicle/detailview.html', {'name': name, 'utype': utype,  'msg': '', 'mtype': mtype, 'vehicle':vehicle, 'stores':stores})
        else:
            return accessDeniedHome(request)
    else:
       return notLoggedIn(request)
