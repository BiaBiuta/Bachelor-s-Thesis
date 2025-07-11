from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ("calendarapp", "0024_sanitationtask"),
    ]

    operations = [
        migrations.CreateModel(
            name="ClockEntry",
            fields=[
                (
                    "id",
                    models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name="ID"),
                ),
                (
                    "start_time",
                    models.DateTimeField(),
                ),
                (
                    "end_time",
                    models.DateTimeField(blank=True, null=True),
                ),
                (
                    "department",
                    models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to="calendarapp.globalobject"),
                ),
                (
                    "nurse",
                    models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to="calendarapp.nurse", to_field="EmployeeID"),
                ),
            ],
            options={"ordering": ["-start_time"]},
        ),
    ]
