# Generated by Django 5.1.7 on 2025-05-26 21:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('accounts', '0002_user_unitate_medicala_user_username'),
        ('auth', '0012_alter_user_first_name_max_length'),
    ]

    operations = [
        migrations.AddConstraint(
            model_name='user',
            constraint=models.UniqueConstraint(fields=('username', 'unitate_medicala'), name='unique_username_unitate'),
        ),
    ]
