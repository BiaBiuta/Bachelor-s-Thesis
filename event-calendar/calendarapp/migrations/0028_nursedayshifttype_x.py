# Generated by Django 4.2.16 on 2025-07-01 16:37

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('calendarapp', '0027_nursedayshifttype_globalobject'),
    ]

    operations = [
        migrations.AddField(
            model_name='nursedayshifttype',
            name='x',
            field=models.FloatField(default=0),
            preserve_default=False,
        ),
    ]
