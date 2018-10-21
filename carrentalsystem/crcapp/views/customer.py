from .modules import *

# Developer: Tom
# Create customer page
def customerCreate(request, messages="", mtype=""):
    # Checking session exists
    if request.session.has_key("uid"):
        name = request.session["name"]#name of session
        utype = request.session["utype"]#type of session

        # Check that it is a member of staff wanting to create a new customer
        if utype == "Manager" or utype == "Developer":
            # If a form has been posted with information
            if request.method == "POST":
                form = request.POST
                reason = CsrfViewMiddleware().process_view(request, None, (), {})
                # If the reason is true it means verification failed
                if reason:
                    return render(request, "customer/modify.html", {"msg": "Token verification failed!", "mtype": "d"})
                else:
                    # Verification did not fail
                    result = customer.CustomerController.create(request)
                    if result == True:
                        return render(request, "customer/modify.html", {"msg": "Customer created.", "mtype": "i"})
                    else:
                        return render(request, "customer/modify.html", {"msg": result, "mtype": "a", "form": customer})
            elif request.method == "GET":
                return render(request, "customer/modify.html", {"msg": messages, "name": name, "mtype": mtype, "utype": utype})
        else:
            return accessDeniedHome(request)
    else:
        return notLoggedIn(request)

# Developer: Tom
# Modify customer member page
""" def customerModify(request, messages="", mtype=""):
    # Checking if session exists
    if request.session.has_key('uid'):
        name = request.session['name']
        utype = request.session['utype']
        stores = Store.objects.all()#grab all the stores from the database

        customer = Customer.objects.get(firstName="Lauren")#example to grab random customer details to populate the form

        currentOperation = "Modify"#for visual differences on the same form

        return render(request, 'customer/modify.html', {'msg': messages, 'name': name, 'mtype': mtype, 'utype': utype, "stores": stores,
        "currentOperation": currentOperation, "customer": customer})
    else:
        return render(request, 'index.html', {'msg': 'Access denied!', 'mtype': "d"}) """

# Developer: Tom
# Viewing all the customers
def viewCustomers(request, messages="", mtype=""):
    # Checking if session exists
    if request.session.has_key('uid'):
        name = request.session['name']
        utype = request.session['utype']

        customers = Customer.objects.all()#grab all customers

        return render(request, 'customer/viewCustomers.html', {'msg': messages, 'name': name, 'mtype': mtype,
        'utype': utype, "customers": customers})
    else:
        return render(request, 'index.html', {'msg': 'Access denied!', 'mtype': "d"})
    
# Developer: Tom
# Modify customer page
def customerModify(request, option, msg='', mtype=''):
    if request.session.has_key('uid'):
        name = request.session['name']
        utype = request.session['utype']
        
        if request.method == 'POST':
            return changeCustomerDetails(request, option, msg, mtype, name, utype)
        elif request.method == 'GET':
            currentOperation = "Modify"#for visual differences on the same form 
            customer = Customer.objects.filter(customerID=option).values()[0]
            
            return render(request, 'customer/modify.html', {'name': name, 'utype': utype,  'msg': '', 'mtype': mtype,
            'customer': customer, "currentOperation": currentOperation})
    else:
       return notLoggedIn(request)

# Developer: Tom
# Update existing details of staff
def changeCustomerDetails(request, option,  name, utype, msg='',mtype=''):
    name = request.session['name']
    utype = request.session['utype']

    existingCustomer = Customer.objects.filter(customerID=option).values()
    reason = CsrfViewMiddleware().process_view(request, None, (), {})
    # If the reason is true it means verification failed
    if reason:
        return render(request, 'customer/modify.html', {'name': name, 'utype': utype,  'msg': '', 'mtype': mtype, 'customer': existingCustomer, "currentOperation": currentOperation})
    else:
        result = customer.CustomerController.modify(request, option)

        if result == True:
            return render(request, 'customer/modify.html', {'name': name, 'utype': utype, 'msg': 'Changes saved.', 'mtype': "i", 'customer': existingCustomer, "customerOperation": currentOperation})
        elif result == False:
            return render(request, 'customer/modify.html', {'name': name, 'utype': utype, 'msg': 'Could not save all changes.', 'mtype': "d", 'customer': existingCustomer, "customerOperation": currentOperation})
        else:
            return render(request, 'customer/modify.html', {'name': name, 'utype': utype, 'msg': result, 'mtype': "a", 'customer': existingCustomer, "customerOperation": currentOperation})

# Searching for customers
def searchCustomers(request):
     # Checking session exists
    if request.session.has_key('uid'):
        name = request.session['name']
        utype = request.session['utype']

        stores = Store.objects.all()
        customers = Customer.objects.all()

        return render(request, 'customer/search.html', {'name': name, 'utype': utype,'stores': stores, customers: 'customers'})
    else:
        return render(request, 'index.html', {'msg': 'Access denied!', 'mtype': "d"})