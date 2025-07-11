try:
    from channels_redis.core import RedisChannelLayer
    print("channels_redis a fost importat cu succes!")
except Exception as e:
    print("Eroare la importarea channels_redis:", e)
