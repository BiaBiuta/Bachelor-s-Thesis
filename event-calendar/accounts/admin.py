from django.contrib import admin
from django.apps import apps
from django.contrib.admin.sites import AlreadyRegistered



def _register_all_models(app_label: str) -> None:
    """Register every model in *app_label* with all fields displayed."""

    for model in apps.get_app_config(app_label).get_models():
        if model in admin.site._registry:
            continue

        admin_class = type(
            f"{model.__name__}Admin",
            (admin.ModelAdmin,),
            {"list_display": [f.name for f in model._meta.fields]},
        )

        try:
            admin.site.register(model, admin_class)
        except AlreadyRegistered:
            pass


_register_all_models("accounts")


