# Dokumentasi Proyek Perpustakaan Digital

## 1. Pembuatan Basis Data MySQL
```sql
-- Langkah 1: Buat database
CREATE DATABASE dj_perpustakaan;

-- Langkah 2: Buat user dan beri hak akses
CREATE USER 'perpustakaan_user'@'localhost' IDENTIFIED BY 'password_aman';
GRANT ALL PRIVILEGES ON dj_perpustakaan.* TO 'perpustakaan_user'@'localhost';
```

## 2. Pemrograman Aplikasi
- **Bahasa Pemrograman**: Python
- **Framework**: 
  - Django (Web Framework)

## 3. Integrasi Basis Data
Aplikasi terhubung ke database melalui:
1. Konfigurasi database di `app/app/settings.py`:
```python
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'dj_perpustakaan',
        'USER': 'perpustakaan_user',
        'PASSWORD': 'password_aman',
        'HOST': 'localhost',
        'PORT': '3306',
    }
}
```

2. Model Django untuk interaksi database (dari `app/main/models.py`):
```python
class Buku(models.Model):
    judul = models.CharField(max_length=200)
    penulis = models.CharField(max_length=100)
    penerbit = models.CharField(max_length=100)
    tahun_terbit = models.IntegerField()
    kategori = models.CharField(max_length=50)

class Mahasiswa(models.Model):
    nim = models.CharField(max_length=10, unique=True)
    nama = models.CharField(max_length=100)
    telepon = models.CharField(max_length=15)

class Peminjaman(models.Model):
    mahasiswa = models.ForeignKey(Mahasiswa, on_delete=models.CASCADE)
    buku = models.ForeignKey(Buku, on_delete=models.CASCADE)
    tanggal_pinjam = models.DateField(auto_now_add=True)
    tanggal_kembali = models.DateField()
```

3. Migrasi database menggunakan Django ORM:
```bash
# Buat migrasi
python manage.py makemigrations

# Terapkan migrasi
python manage.py migrate
```

**Keamanan Database**:
- Menggunakan environment variables di `.env` untuk konfigurasi sensitif
- Django ORM memberikan proteksi SQL injection bawaan
- Sistem autentikasi Django untuk manajemen user
