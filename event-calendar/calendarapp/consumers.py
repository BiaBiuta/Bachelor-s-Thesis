import logging

from asgiref.sync import sync_to_async
# calendarapp/consumers.py
from channels.generic.websocket import AsyncWebsocketConsumer
import json
# from calendarapp.models.event import Event


# dictionar global pentru a asocia utilizatorii cu channel_name-urile lor.
CHANNEL_MAP = {}
logger = logging.getLogger(__name__)
class RoleBasedNotificationConsumer(AsyncWebsocketConsumer):
    async def connect(self):
        user = self.scope['user']
        if user.is_anonymous:
            await self.close()
            return
        self.group_name = 'notificare_grup'
        logger.debug(f"CONNECT: adaug canalul {self.channel_name} la grupul {self.group_name}")
        await self.channel_layer.group_add(self.group_name, self.channel_name)
        self.personal_group = f"user_{user.id}"
        await self.channel_layer.group_add(self.personal_group, self.channel_name)
        await self.accept()
        logger.debug("CONNECT: conexiune acceptată")
    async def disconnect(self, close_code):
        # la deconectare, elimin utilizator
        logger.debug(f"DISCONNECT: elimin canalul {self.channel_name} din grupul {self.group_name} (code={close_code})")
        await self.channel_layer.group_discard(self.group_name, self.channel_name)

    async def receive(self, text_data=None, bytes_data=None):
        logger.debug(f"RECEIVE: primit text_data={text_data!r}")
        if not text_data:
            return

        data = json.loads(text_data)
        msg_type = data.get('type')
        logger.debug(msg_type)
        if msg_type == "notificare":
            sender = data.get("sender", "Necunoscut")
            message = f"Utilizatorul {sender} a apăsat butonul!"
            await self.channel_layer.group_send(
                self.group_name,
                {
                    "type": "notificare_message",
                    "message": message,
                    "sender": sender,
                }
            )
        elif msg_type == "addEvent":
            sender = data.get("sender")
            event_id = data.get("title")
            message = f"Evenimentul {event_id} a fost adăugat de {sender}"
            await self.channel_layer.group_send(
                self.group_name,
                {
                    "type": "addEvent",
                    "message": message,
                    "sender": sender,
                }
            )

        elif msg_type == "delete_event":
            sender = data.get("sender")
            ev_id = data.get("eventId")
            message = f"Evenimentul {ev_id} a fost șters de {sender}"
            await self.channel_layer.group_send(
                self.group_name,
                {
                    "type": "notificare_message",
                    "message": message,
                    "sender": sender,
                }
            )

        elif msg_type == "custom_type":
            payload = data.get("payload", {})
            await self.channel_layer.group_send(
                self.group_name,
                {
                    "type": "custom_message",
                    "payload": payload,
                }
            )
        elif msg_type == "save_shift_requests":
            timestamp = data.get("timestamp")
            await self.channel_layer.group_send(
                self.group_name,
                {
                    "type": "shift_saved_notification",
                    "timestamp": timestamp,
                    # "updated_ids": data.get("ids", [])
                }
            )
        elif msg_type == "event_approved":
            owner_id = data["ownerId"]
            target_group = f"user_{owner_id}"
            message = f"Evenimentul {data['event_id']} a fost aprobat de {data['sender']}"
            await self.channel_layer.group_send(
                target_group,
                {
                    "type": "approve_message",
                    "message": message,
                    "sender": data["sender"],
                }
            )
        elif msg_type == "event_denied":
            owner_id = data["ownerId"]
            target_group = f"user_{owner_id}"
            message = f"Evenimentul {data['event_id']} a fost denided de {data['sender']}"
            await self.channel_layer.group_send(
                target_group,
                {
                    "type": "denied_message",
                    "message": message,
                    "sender": data["sender"],
                }
            )
        elif msg_type== "shift_request_approve":
            owner = data.get("owner")
            event_id = data.get("message")
            target_group = f"user_{owner}"
            message = f"Shift_requestul {event_id} a fost aprobat de {sender}"
            await self.channel_layer.group_send(target_group,
                {
                    "owner":owner,
                    "type": "shift_request_add",
                    "message": message,
                    "sender": sender,
                })
        elif msg_type== "shift_request_add":
            sender = data.get("sender")
            event_id = data.get("raw")
            message = f"Shift_requestul {event_id} a fost adăugat de {sender}"
            await self.channel_layer.group_send(self.group_name,
                {
                    "type": "shift_request_add",
                    "message": message,
                    "sender": sender,
                })

        else:
            logger.warning(f"RECEIVE: tip necunoscut: {msg_type}")

    async def notificare_message(self, event):
        logger.debug(f"NOTIFICARE_MESSAGE: event={event!r}, trimitem către client canal {self.channel_name}")
        logger.debug(f"NOTIFICARE_MESSAGE: event={event!r}, trimitem către client canal {self.channel_name}")
        payload = {
            'message': event.get('message'),
            'sender': event.get('sender'),
        }
        await self.send(text_data=json.dumps(payload))
        logger.debug(f"NOTIFICARE_MESSAGE: mesaj trimis payload={payload!r}")
    async  def addEvent(self,event):
        logger.debug(f"ADDEVENT: event={event!r}, trimitem către client canal {self.channel_name}")
        payload = {
            'type': 'addEvent',
            'message': event.get('message'),
            'sender': event.get('sender'),
            'url': '/calendar/'
        }
        await self.send(text_data=json.dumps(payload))
        logger.debug(f"ADDEVENT: mesaj trimis payload={payload!r}")
    async  def shift_request_add(self,event):
        logger.debug(f"SHIFTREQUESTs: event={event!r}, trimitem către client canal {self.channel_name}")
        payload = {
            'type': 'shift_request_add',
            'message': event.get('message'),
            'sender': event.get('sender'),
            'url': '/instances/'
        }
        await self.send(text_data=json.dumps(payload))
        logger.debug(f"ADDEVENT: mesaj trimis payload={payload!r}")
    async  def approve_message(self,event):
        logger.debug(f"APPROVE_MESSAGE: event={event!r}, trimitem către client canal {self.channel_name}")
        payload = {
            'message': event.get('message'),
            'sender': event.get('sender'),
        }
        await self.send(text_data=json.dumps(payload))
        logger.debug(f"APPROVE_MESSAGE: mesaj trimis payload={payload!r}")
    async  def denied_message(self,event):
        logger.debug(f"DENIED_MESSAGE: event={event!r}, trimitem către client canal {self.channel_name}")
        payload = {
            'message': event.get('message'),
            'sender': event.get('sender'),
        }
        await self.send(text_data=json.dumps(payload))
        logger.debug(f"DENIED_MESSAGE: mesaj trimis payload={payload!r}")

    async def shift_request_add(self, event):
        logger.debug(f"SHIFTREQUEST_ADD: event={event!r}")
        payload = {
            "type": "shift_request_add",
            "message": event.get("message"),
            "sender": event.get("sender"),
            "owner": event.get("owner"),
        }
        await self.send(text_data=json.dumps(payload))

    async def shift_saved_notification(self, event):

        timestamp = event["timestamp"]
        await self.send(text_data=json.dumps({
            "type": "info",
            "message": f"ShiftRequest a fost salvat la {timestamp}"
        }))
class TypingConsumer(AsyncWebsocketConsumer):
    async def connect(self):
        await self.accept()

    async def receive(self, text_data):
        """
        Browserul trimite {"typing": true/false}.
        Serverul doar face broadcast peste acelaşi socket (eco).
        """
        await self.send(text_data=text_data)



