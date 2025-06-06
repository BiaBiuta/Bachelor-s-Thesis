from django.views.generic import TemplateView
from django.shortcuts import render
import json

class SchedulerView(TemplateView):
    template_name = "scheduler.html"

    def get_context_data(self, **kw):
        user = self.request.user
        ctx = super().get_context_data(**kw)
        ctx["USER"] = {
            "name":  user.get_full_name() or user.username,
            "email": user.email,
            "id":    user.id or 0,
        }
        return ctx

# partial htmx pentru debug refresh
def debug_box(request):
    state = json.loads(request.body or "{}")   # primeşte JSON din fetch
    return render(request, "chat/partials/debug_box.html", {"state": state})
