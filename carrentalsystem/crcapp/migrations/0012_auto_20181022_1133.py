# Generated by Django 2.1.2 on 2018-10-22 01:33

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('crcapp', '0011_auto_20181022_1056'),
    ]

    operations = [
        migrations.AlterField(
            model_name='customer',
            name='driverLicenceNumber',
            field=models.PositiveIntegerField(null=True),
        ),
        migrations.AlterField(
            model_name='customer',
            name='occupation',
            field=models.CharField(default='Labour', max_length=50),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='customer',
            name='postCodeAddress',
            field=models.PositiveIntegerField(null=True),
        ),
        migrations.AlterField(
            model_name='customer',
            name='streetAddress',
            field=models.CharField(default='123 I hate life', max_length=50),
            preserve_default=False,
        ),
    ]
