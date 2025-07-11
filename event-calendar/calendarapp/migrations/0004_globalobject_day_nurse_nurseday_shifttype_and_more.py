# Generated by Django 5.1.7 on 2025-04-10 20:25

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('calendarapp', '0003_alter_event_title'),
    ]

    operations = [
        migrations.CreateModel(
            name='GlobalObject',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('HorizonLength', models.IntegerField(default=0)),
                ('TotalKPIHard', models.FloatField(default=0.0)),
                ('KPIHardOneShiftOneDay', models.FloatField(default=0.0)),
                ('KPIHardShiftRotation', models.FloatField(default=0.0)),
                ('KPIHardMaxNrOfShifts', models.FloatField(default=0.0)),
                ('KPIHardMaxTotalMinutes', models.FloatField(default=0.0)),
                ('KPIHardMinTotalMinutes', models.FloatField(default=0.0)),
                ('KPIHardMaxConsShifts', models.FloatField(default=0.0)),
                ('KPIHardMinConsShifts', models.FloatField(default=0.0)),
                ('KPIHardMinConsDaysOff', models.FloatField(default=0.0)),
                ('KPIHardMaxNrWeekend', models.FloatField(default=0.0)),
                ('KPIHardDaysOff', models.FloatField(default=0.0)),
                ('KPISoftShiftOnRequest', models.FloatField(default=0.0)),
                ('KPISoftShiftOffRequest', models.FloatField(default=0.0)),
                ('KPISoftUnderCover', models.FloatField(default=0.0)),
                ('KPISoftOverCover', models.FloatField(default=0.0)),
                ('KPITotalKPISoft', models.FloatField(default=0.0)),
            ],
        ),
        migrations.CreateModel(
            name='Day',
            fields=[
                ('DayID', models.CharField(max_length=50, primary_key=True, serialize=False, unique=True)),
                ('GlobalObject', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='days', to='calendarapp.globalobject')),
            ],
        ),
        migrations.CreateModel(
            name='Nurse',
            fields=[
                ('EmployeeID', models.CharField(max_length=50, primary_key=True, serialize=False, unique=True)),
                ('MaxShifts', models.CharField(max_length=400)),
                ('MaxTotalMins', models.IntegerField()),
                ('MinTotalMins', models.IntegerField()),
                ('MaxConsShifts', models.IntegerField()),
                ('MinConsShifts', models.IntegerField()),
                ('MinConsDaysOff', models.IntegerField()),
                ('MaxWeekends', models.IntegerField()),
                ('DaysOff', models.FloatField()),
                ('GlobalObject', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='calendarapp.globalobject')),
            ],
        ),
        migrations.CreateModel(
            name='NurseDay',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('IsDayOff', models.BooleanField()),
                ('Day', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='calendarapp.day')),
                ('Nurse', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='calendarapp.nurse')),
            ],
        ),
        migrations.CreateModel(
            name='ShiftType',
            fields=[
                ('ShiftID', models.CharField(max_length=50, primary_key=True, serialize=False, unique=True)),
                ('LengthInMins', models.FloatField()),
                ('ForbiddenShifts', models.JSONField()),
                ('GlobalObject', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='calendarapp.globalobject')),
            ],
        ),
        migrations.CreateModel(
            name='NurseShiftType',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('MaxShifts', models.IntegerField()),
                ('Nurse', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='calendarapp.nurse')),
                ('ShiftType', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='calendarapp.shifttype')),
            ],
        ),
        migrations.CreateModel(
            name='NurseDayShiftType',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('IsAssigned', models.BooleanField(default=False)),
                ('IsOnRequest', models.BooleanField()),
                ('IsOffRequest', models.BooleanField()),
                ('OnRequestWeight', models.FloatField()),
                ('OffRequestWeight', models.FloatField()),
                ('Day', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='calendarapp.day')),
                ('Nurse', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='calendarapp.nurse')),
                ('NurseDay', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='calendarapp.nurseday')),
                ('ShiftType', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='calendarapp.shifttype')),
            ],
        ),
        migrations.CreateModel(
            name='DayShiftType',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('NrRequired', models.IntegerField()),
                ('OverCoverWeight', models.IntegerField()),
                ('UnderCoverWeight', models.IntegerField()),
                ('Day', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='calendarapp.day')),
                ('ShiftType', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='calendarapp.shifttype')),
            ],
        ),
    ]
