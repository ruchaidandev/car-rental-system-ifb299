# Generated by Django 2.1.2 on 2018-10-22 00:56

import datetime
import django.core.validators
from django.db import migrations, models
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('crcapp', '0010_auto_20180920_1157'),
    ]

    operations = [
        migrations.AlterField(
            model_name='customer',
            name='dateJoined',
            field=models.DateField(auto_now_add=True, default=datetime.datetime(2018, 10, 22, 0, 56, 29, 709043, tzinfo=utc)),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='customer',
            name='email',
            field=models.EmailField(blank=True, default='', max_length=254, validators=[django.core.validators.EmailValidator()]),
        ),
        migrations.AlterField(
            model_name='customer',
            name='lastLogin',
            field=models.DateField(auto_now_add=True, default=datetime.datetime(2018, 10, 22, 0, 56, 32, 897190, tzinfo=utc)),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='customer',
            name='password',
            field=models.TextField(blank=True, default='', max_length=50),
        ),
        migrations.AlterField(
            model_name='customer',
            name='userName',
            field=models.CharField(blank=True, default='', max_length=50),
        ),
    ]
