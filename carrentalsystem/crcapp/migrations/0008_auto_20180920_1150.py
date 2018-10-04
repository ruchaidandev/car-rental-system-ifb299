# Generated by Django 2.1.1 on 2018-09-20 01:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('crcapp', '0007_auto_20180917_1528'),
    ]

    operations = [
        migrations.AlterField(
            model_name='vehicle',
            name='bodyType',
            field=models.CharField(max_length=50),
        ),
        migrations.AlterField(
            model_name='vehicle',
            name='driveType',
            field=models.CharField(max_length=30),
        ),
        migrations.AlterField(
            model_name='vehicle',
            name='enginesize',
            field=models.DecimalField(decimal_places=1, max_digits=4),
        ),
        migrations.AlterField(
            model_name='vehicle',
            name='fuelSystem',
            field=models.CharField(max_length=50),
        ),
        migrations.AlterField(
            model_name='vehicle',
            name='standardTransmission',
            field=models.CharField(max_length=50),
        ),
    ]