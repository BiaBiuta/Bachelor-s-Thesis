# Generated by Django 5.1.6 on 2025-03-24 13:30

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0009_day_nurseday_shifttype_nurseshifttype_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='nursedayshifttype',
            name='IsAssigned',
            field=models.BooleanField(default=False),
        ),
    ]
