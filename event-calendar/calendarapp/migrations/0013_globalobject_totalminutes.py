# Generated by Django 5.1.7 on 2025-05-19 09:15

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('calendarapp', '0012_alter_shiftrequest_nurse'),
    ]

    operations = [
        migrations.AddField(
            model_name='globalobject',
            name='TotalMinutes',
            field=models.IntegerField(default=0),
        ),
    ]
