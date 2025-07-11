from django.db.models.signals import post_save
from django.dispatch import receiver
from .models import Event
from channels.layers import get_channel_layer
from asgiref.sync import async_to_sync

@receiver(post_save, sender=Event)
def notify_superuser_on_event_creation(sender, instance, created, **kwargs):
    if created:
        channel_layer = get_channel_layer()
        async_to_sync(channel_layer.group_send)(
            'superuser_notifications',
            {
                'type': 'send_notification',
                'message': f'New event created: {instance.title}',
            }
        )

