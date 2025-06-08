# Event Calendar in Django

https://www.youtube.com/watch?v=HvnPeeLEVq0&t=0s

# Demo
![image](https://user-images.githubusercontent.com/39632170/123464377-88ec3600-d60e-11eb-8df6-88a138d23126.png)


## How To Setup
```
git clone https://github.com/sajib1066/event-calendar.git
```
```
cd event-calendar
```
```
python3 -m venv venv
```
```
source venv/bin/activate
```
```
pip install -r requirements.txt
```
```
python manage.py makemigrations
```
```
python manage.py migrate
```
```
python manage.py createsuperuser
```
```
python manage.py runserver
```

## Admin Features

The project includes several tools for administrators:

* Approve or deny shift requests and emergency requests directly from the admin interface.
* Export selected events or nurses to CSV from the admin list pages.
* Manage departments (`GlobalObject`) and nursing staff (`Nurse`) through dedicated admin screens.

## Customizing the admin dashboard

The default Django admin landing page is overridden by
`templates/admin/index.html`. This template extends `base/base.html` so the
dashboard matches the rest of the site design while keeping the standard admin
functionality. Edit this file if you want to tweak the dashboard further.
