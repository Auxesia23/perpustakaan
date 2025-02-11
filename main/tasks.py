from celery import shared_task
from django.utils.timezone import now
from .models import Peminjaman

@shared_task
def cek_status_peminjaman():
    peminjaman_terlambat = Peminjaman.objects.filter(status='dipinjam', tanggal_kembali__lt=now().date())
    updated_count = peminjaman_terlambat.update(status='terlambat')
    return f"{updated_count} peminjaman diperbarui menjadi terlambat."
