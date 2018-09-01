from django.db import models

# Create your models here.
class Users(models.Model):
    userID = models.IntergerField(primary_key=true)
    userName = models.CharField(max_length=32)
    password = models.CharField(max_length=32)
    userType = (('BM', 'Boardmember'),
                ('SM','staff member'),
                ('C','Customer'))
    dateJoined = models.DateField()
    lastLogin = models.DateField()
