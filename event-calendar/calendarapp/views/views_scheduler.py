from django.views.generic import TemplateView
from django.shortcuts import render
import json

class SchedulerView(TemplateView):
    template_name = "scheduler.html"

    def get_context_data(self, **kw):
        user = self.request.user
        ctx = super().get_context_data(**kw)
        ctx["USER"] = {
            "name":   user.username,
            "email": user.email,
            "id":    user.id or 0,
        }
        return ctx


def debug_box(request):
    "'# partial htmx pentru debug refresh'"
    state = json.loads(request.body or "{}")
    return render(request, "chat/partials/debug_box.html", {"state": state})
