from django.db import models
from django.contrib.auth.models import User
from datetime import date

class Mahasiswa(models.Model):
    nim = models.CharField(max_length=8, primary_key=True)
    nama = models.CharField(max_length=255)
    no_telpon = models.CharField(max_length=13)

    def __str__(self):
        return f"{self.nim} - {self.nama}"


class Buku(models.Model):
    judul = models.CharField(max_length=255)
    penulis = models.CharField(max_length=255)
    penerbit = models.CharField(max_length=255)
    tahun = models.IntegerField()
    kategori = models.CharField(max_length=255)

    def __str__(self):
        return f"{self.id} - {self.judul}"


class Peminjaman(models.Model):
    STATUS_CHOICES = [
        ('dipinjam', 'Dipinjam'),
        ('dikembalikan', 'Dikembalikan'),
        ('terlambat', 'Terlambat'),
    ]

    nim = models.ForeignKey(Mahasiswa, on_delete=models.CASCADE)
    id_buku = models.ForeignKey(Buku, on_delete=models.CASCADE)
    tanggal_pinjam = models.DateField()
    tanggal_kembali = models.DateField()
    id_petugas = models.ForeignKey(User, on_delete=models.CASCADE, editable=False)
    status = models.CharField(max_length=12, choices=STATUS_CHOICES, default='dipinjam')

    def keterlambatan_hari(self):
        """Menghitung jumlah hari keterlambatan"""
        if self.status == "dikembalikan":
            return 0  
        hari_ini = date.today()
        if hari_ini > self.tanggal_kembali:
            return (hari_ini - self.tanggal_kembali).days
        return 0

    def save(self, *args, **kwargs):
        """Cek validasi tanggal dan ubah status otomatis"""
        if self.tanggal_kembali < self.tanggal_pinjam:
            raise ValueError("Tanggal kembali tidak boleh lebih awal dari tanggal pinjam.")

        # Jika belum dikembalikan dan melewati tanggal kembali, ubah status menjadi terlambat
        if self.status == "dipinjam" and date.today() > self.tanggal_kembali:
            self.status = "terlambat"

        super().save(*args, **kwargs)

    def __str__(self):
        return f"{self.nim} - {self.id_buku.judul} - {self.get_status_display()} - {self.keterlambatan_hari()} hari"
