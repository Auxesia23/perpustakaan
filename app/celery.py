import os
from celery import Celery

# Set default Django settings
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "app.settings")

# Inisialisasi Celery
app = Celery("perpus")

# Load konfigurasi dari Django settings.py
app.config_from_object("django.conf:settings", namespace="CELERY")

# Autodiscover tasks dari semua app yang terdaftar
app.autodiscover_tasks()
