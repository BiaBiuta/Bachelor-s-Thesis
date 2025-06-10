from django.views.generic import TemplateView

class GuidelinesView(TemplateView):
    template_name = 'calendarapp/guidelines.html'
