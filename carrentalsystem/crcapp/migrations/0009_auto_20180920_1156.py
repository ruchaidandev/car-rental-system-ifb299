# Generated by Django 2.1.1 on 2018-09-20 01:56

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('crcapp', '0008_auto_20180920_1150'),
    ]

    operations = [
        migrations.AddField(
            model_name='customer',
            name='disable',
            field=models.BooleanField(default=1),
        ),
        migrations.AddField(
            model_name='employee',
            name='disable',
            field=models.BooleanField(default=1),
        ),
    ]