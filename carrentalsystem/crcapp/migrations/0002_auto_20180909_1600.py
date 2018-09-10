# Generated by Django 2.1.1 on 2018-09-09 06:00

import django.core.validators
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('crcapp', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='in',
            name='storeID',
        ),
        migrations.RemoveField(
            model_name='in',
            name='vehicleID',
        ),
        migrations.RemoveField(
            model_name='rents',
            name='customerID',
        ),
        migrations.RemoveField(
            model_name='rents',
            name='vehicleID',
        ),
        migrations.RenameField(
            model_name='customer',
            old_name='Occupation',
            new_name='occupation',
        ),
        migrations.RenameField(
            model_name='orderfor',
            old_name='carID',
            new_name='vehicleID',
        ),
        migrations.AddField(
            model_name='customer',
            name='gender',
            field=models.CharField(default='NA', max_length=2),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='employee',
            name='userType',
            field=models.CharField(default='staff', max_length=16),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='order',
            name='orderType',
            field=models.CharField(default='NA', max_length=16),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='vehicle',
            name='storeID',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.DO_NOTHING, to='crcapp.Store'),
        ),
        migrations.AlterField(
            model_name='customer',
            name='email',
            field=models.EmailField(max_length=254, validators=[django.core.validators.EmailValidator()]),
        ),
        migrations.AlterField(
            model_name='customer',
            name='password',
            field=models.TextField(),
        ),
        migrations.AlterField(
            model_name='customer',
            name='phoneNumber',
            field=models.BigIntegerField(),
        ),
        migrations.AlterField(
            model_name='customer',
            name='postCodeAddress',
            field=models.IntegerField(max_length=10),
        ),
        migrations.AlterField(
            model_name='customer',
            name='stateAddress',
            field=models.CharField(max_length=30),
        ),
        migrations.AlterField(
            model_name='employee',
            name='cityAddress',
            field=models.CharField(max_length=50),
        ),
        migrations.AlterField(
            model_name='employee',
            name='email',
            field=models.EmailField(max_length=254, validators=[django.core.validators.EmailValidator()]),
        ),
        migrations.AlterField(
            model_name='employee',
            name='password',
            field=models.TextField(),
        ),
        migrations.AlterField(
            model_name='employee',
            name='phoneNumber',
            field=models.BigIntegerField(),
        ),
        migrations.AlterField(
            model_name='employee',
            name='postCodeAddress',
            field=models.IntegerField(max_length=10),
        ),
        migrations.AlterField(
            model_name='employee',
            name='stateAddress',
            field=models.CharField(max_length=50),
        ),
        migrations.AlterField(
            model_name='store',
            name='city',
            field=models.CharField(max_length=30),
        ),
        migrations.AlterField(
            model_name='store',
            name='state',
            field=models.CharField(max_length=30),
        ),
        migrations.AlterField(
            model_name='vehicle',
            name='bodyType',
            field=models.CharField(max_length=30),
        ),
        migrations.AlterField(
            model_name='vehicle',
            name='fuelSystem',
            field=models.CharField(max_length=20),
        ),
        migrations.AlterField(
            model_name='vehicle',
            name='makeName',
            field=models.CharField(max_length=50),
        ),
        migrations.AlterField(
            model_name='vehicle',
            name='model',
            field=models.CharField(max_length=50),
        ),
        migrations.AlterField(
            model_name='vehicle',
            name='newPrice',
            field=models.DecimalField(decimal_places=2, max_digits=10),
        ),
        migrations.AlterField(
            model_name='vehicle',
            name='power',
            field=models.IntegerField(max_length=5),
        ),
        migrations.AlterField(
            model_name='vehicle',
            name='series',
            field=models.CharField(max_length=50),
        ),
        migrations.AlterField(
            model_name='vehicle',
            name='standardTransmission',
            field=models.CharField(max_length=10),
        ),
        migrations.AlterField(
            model_name='vehicle',
            name='tankcapacity',
            field=models.DecimalField(decimal_places=1, max_digits=7),
        ),
        migrations.AlterUniqueTogether(
            name='inspects',
            unique_together={('employeeID', 'vehicleID')},
        ),
        migrations.AlterUniqueTogether(
            name='orderfor',
            unique_together={('orderID', 'vehicleID')},
        ),
        migrations.DeleteModel(
            name='In',
        ),
        migrations.DeleteModel(
            name='Rents',
        ),
    ]
