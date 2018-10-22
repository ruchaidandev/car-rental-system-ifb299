from .modules import *

# Developer: Tom
# Create customer page
def customerCreate(request, msg="", mtype=""):
    # Checking session exists
    if request.session.has_key("uid"):
        name = request.session["name"]#name of session
        utype = request.session["utype"]#type of session

        # Check that it is a member of staff wanting to create a new customer
        if utype == "Manager" or utype == "Developer":
            # If a form has been posted with information
            if request.method == "POST":
                reason = CsrfViewMiddleware().process_view(request, None, (), {})#check CSRF token
                # If the reason is true it means verification failed
                if reason:
                    return render(request, "customer/create.html", {"msg": "Token verification failed!", "mtype": "d"})
                # Verification did not fail
                else:
                    result = customer.CustomerController.create(request)#pass form data to customer controller
                    if result == True:#if the customer was created
                        return render(request, "customer/create.html", {"msg": "Customer created.", "mtype": "i"})
                    else:#if the customer was not created and errors occurred
                        return render(request, "customer/create.html", {"msg": result, "mtype": "a"})
            # If the form has been requested/retrieve the form for the staff to fill out
            elif request.method == "GET":
                return render(request, "customer/create.html", {"msg": msg, "name": name, "mtype": mtype, "utype": utype})
        # User does not have the correct permissions
        else:
            return accessDeniedHome(request)
    # User is not in a session
    else:
        return notLoggedIn(request)

# Developer: Tom
# Viewing all the customers
def viewCustomers(request, messages="", mtype=""):
    # Checking if session exists
    if request.session.has_key("uid"):
        name = request.session["name"]#name of session
        utype = request.session["utype"]#type of session

        customers = Customer.objects.all()#grab all customers

        return render(request, "customer/viewCustomers.html", {"msg": messages, "name": name, "mtype": mtype,
        "utype": utype, "customers": customers})
    # User is not in a session
    else:
        return notLoggedIn(request)

# Developer: Tom
# Modify customer page
def customerModify(request, customer_ID, msg="", mtype=""):
    # Checking if session exists
    if request.session.has_key("uid"):
        name = request.session["name"]#name of session
        utype = request.session["utype"]#type of session

        # Check that it is a member of staff wanting to create a new customer
        if utype == "Manager" or utype == "Developer":
            # If a form has been posted with information
            if request.method == "POST":
                existingCustomer = Customer.objects.get(customerID__exact=customer_ID)#grab the details of the customer 
                #in case the data entry fails and the form needs to be repopulated
                reason = CsrfViewMiddleware().process_view(request, None, (), {})#check CSRF token
                # If the reason is true it means verification failed
                if reason:
                    return render(request, "customer/modify.html", {"msg": "Token verification failed!", "mtype": "d"})
                # Verification did not fail
                else:
                    result = customer.CustomerController.modify(request)#pass form data to customer controller
                    if result == True:#if the customer details were modified 
                        return render(request, "customer/modify.html", {"msg": "Customer details modified.", "mtype": "i"})
                    else:#if the customer details were not modified  and errors occurred
                        return render(request, "customer/modify.html", {"msg": result, "mtype": "a", name: "name", "utype": utype, "customer": customer})
            elif request.method == "GET":
                exisitngCustomer = get_object_or_404(Customer, customerID=customer_ID)#grab the details of the customer 
                #requested from matching the customerID in the URL and querying the database

                return render(request, "customer/modify.html", {"msg": "", "name": name, "mtype": mtype, "utype": utype,   
                "customer": exisitngCustomer})
        # User does not have the correct permissions
        else:
            return accessDeniedHome(request)
    # User is not in a session
    else:
       return notLoggedIn(request)