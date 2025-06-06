from django.db import models
from django.contrib.auth.models import (
    AbstractBaseUser,
    BaseUserManager,
    PermissionsMixin,
)
from django.utils.translation import gettext_lazy as _

class UserManager(BaseUserManager):
    """ User manager """

    def _create_user(self, email, username, unitate_medicala, password=None, **extra_fields):
        if not email:
            raise ValueError("Trebuie să furnizezi o adresă de email")
        if not username:
            raise ValueError("Trebuie să furnizezi un username")
        if unitate_medicala is None:
            raise ValueError("Trebuie să furnizezi o unitate_medicala")
        email = self.normalize_email(email)
        user = self.model(
            email=email,
            username=username,
            unitate_medicala=unitate_medicala,
            **extra_fields
        )
        user.set_password(password)
        user.save(using=self._db)
        return user

    def create_user(self, email, username, unitate_medicala, password=None, **extra_fields):
        extra_fields.setdefault("is_staff", False)
        extra_fields.setdefault("is_superuser", False)
        return self._create_user(email, username, unitate_medicala, password, **extra_fields)

    def create_staffuser(self, email, username, unitate_medicala, password=None, **extra_fields):
        extra_fields.setdefault("is_staff", True)
        extra_fields.setdefault("is_superuser", False)
        return self._create_user(email, username, unitate_medicala, password, **extra_fields)

    def create_superuser(self, email, username, unitate_medicala, password=None, **extra_fields):
        extra_fields.setdefault("is_staff", True)
        extra_fields.setdefault("is_superuser", True)
        return self._create_user(email, username, unitate_medicala, password, **extra_fields)


class User(AbstractBaseUser, PermissionsMixin):
    """ Custom user model """

    email = models.EmailField(
        _("Email Address"),
        max_length=255,
        unique=True,
        help_text="Ex: example@example.com",
    )
    username = models.CharField(
        _("Username"),
        max_length=150,
        help_text=_("Un nume de utilizator"),
    )
    unitate_medicala = models.PositiveIntegerField(
        _("Unitate medicală"),
        help_text=_("ID-ul unității medicale asociate"),
    )

    is_staff = models.BooleanField(_("Staff status"), default=False)
    is_active = models.BooleanField(_("Active"), default=True)
    date_joined = models.DateTimeField(_("Date Joined"), auto_now_add=True)
    last_updated = models.DateTimeField(_("Last Updated"), auto_now=True)

    objects = UserManager()

    # Folosim email ca USERNAME_FIELD, dar vrem să cerem și celelalte două la createsuperuser
    USERNAME_FIELD = "email"
    REQUIRED_FIELDS = ["username", "unitate_medicala"]

    class Meta:
        constraints = [
            models.UniqueConstraint(
                fields=["username", "unitate_medicala"],
                name="unique_username_unitate"
            )
        ]

    def __str__(self):
        return f"{self.username} ({self.email})"
