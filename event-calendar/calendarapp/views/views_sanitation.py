from django.contrib.auth.decorators import login_required
from django.views.generic import ListView
from django.shortcuts import render, redirect
from calendarapp.models.sanitation_task import SanitationTask
from calendarapp.forms import SanitationTaskForm
from calendarapp.models.global_object import GlobalObject

class SanitationTaskListView(ListView):
    model = SanitationTask
    template_name = "calendarapp/sanitation_task_list.html"
    context_object_name = "tasks"

    def get_queryset(self):
        user = self.request.user
        if user.is_superuser:
            return SanitationTask.objects.all()
        return SanitationTask.objects.filter(department_id=user.unitate_medicala)

@login_required
def sanitation_task_create(request):
    form = SanitationTaskForm(request.POST or None)
    if request.method == "POST" and form.is_valid():
        task = form.save()
        return redirect("calendarapp:sanitation_task_list")
    return render(request, "calendarapp/sanitation_task_form.html", {"form": form})
