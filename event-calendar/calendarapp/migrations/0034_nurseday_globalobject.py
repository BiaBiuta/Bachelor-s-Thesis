# Generated by Django 4.2.16 on 2025-07-01 17:09

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('calendarapp', '0033_nursedayshifttype_globalobject'),
    ]

    operations = [
        migrations.AddField(
            model_name='nurseday',
            name='GlobalObject',
            field=models.ForeignKey(default=114, on_delete=django.db.models.deletion.CASCADE, to='calendarapp.globalobject'),
            preserve_default=False,
        ),
    ]
