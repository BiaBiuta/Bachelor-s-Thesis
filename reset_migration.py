from django.db import connection

app_name = "app"

with connection.cursor() as cursor:
    cursor.execute(f"DELETE FROM django_migrations WHERE app = '{app_name}';")
print(f"Migrațiile pentru aplicația '{app_name}' au fost șterse cu succes.")
