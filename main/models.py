from django.db import models

# Create your models here.

class Mahasiswa(models.Model) :
    nim = models.CharField(max_length=8, primary_key=True)
    nama = models.CharField(max_length=255)
    no_telpon = models.CharField(max_length=13)

    def __str__(self):
        return self.nim

class Buku(models.Model) :
    judul = models.CharField(max_length=255)
    penulis = models.CharField(max_length=255)
    penerbit = models.CharField(max_length=255)
    tahun = models.IntegerField()
    kategori = models.CharField(max_length=255)

    def __str__(self):
        return self.judul

class Peminjaman(models.Model) :
    nim = models.ForeignKey(Mahasiswa,models.CASCADE)
    id_buku = models.ForeignKey(Buku, models.CASCADE)
    tanggal_pinjam = models.DateField()
    tanggal_kembali = models.DateField()

    def __str__(self):
        return f"{self.nim} - {self.id_buku.judul}"