from django.views.generic import View
from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login

from accounts.forms import SignInForm
from calendarapp.views.context_processors import current_nurse_global_object

class SignInView(View):
    """ User registration view """

    template_name = "accounts/signin.html"
    form_class = SignInForm

    def get(self, request, *args, **kwargs):
        forms = self.form_class()
        context = {"form": forms}
        return render(request, self.template_name, context)

    def post(self, request, *args, **kwargs):
        forms = self.form_class(request.POST)
        if forms.is_valid():
            email = forms.cleaned_data["email"]
            password = forms.cleaned_data["password"]
            user = authenticate(email=email, password=password)
            if user:
                login(request, user)
                data = current_nurse_global_object(request)
                # scoate id-ul numeric
                gid = data.get('current_global_object_id')
                print(gid)
                return redirect("calendarapp:calendar",gid )
        context = {"form": forms}
        return render(request, self.template_name, context)
