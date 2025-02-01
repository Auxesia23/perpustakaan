# Rencana Pengembangan Aplikasi Perpustakaan

## Deskripsi Proyek
Aplikasi manajemen perpustakaan berbasis Django yang mengelola peminjaman buku oleh mahasiswa.

## Fitur yang Sudah Ada
1. Model data untuk:
   - Mahasiswa (NIM, nama, no telepon)
   - Buku (judul, penulis, penerbit, tahun, kategori)
   - Peminjaman (relasi mahasiswa, buku, tanggal pinjam & kembali)

## Rencana Pengembangan

### 1. Pengembangan Views dan Templates
- [ ] Halaman Dashboard
  - Ringkasan jumlah buku, mahasiswa, dan peminjaman aktif
  - Grafik peminjaman bulanan

- [ ] Manajemen Buku
  - Form penambahan dan edit buku
  - Daftar buku dengan fitur pencarian dan filter
  - Detail buku dengan status ketersediaan

- [ ] Manajemen Mahasiswa
  - Form registrasi dan edit mahasiswa
  - Daftar mahasiswa dengan pencarian
  - Riwayat peminjaman per mahasiswa

- [ ] Sistem Peminjaman
  - Form peminjaman buku
  - Form pengembalian buku
  - Notifikasi keterlambatan

### 2. Pengembangan Fitur Tambahan
- [ ] Sistem autentikasi dan otorisasi
  - Login untuk petugas
  - Pembatasan akses berdasarkan peran

- [ ] Fitur Pencarian
  - Pencarian buku berdasarkan judul, penulis, kategori
  - Filter berdasarkan status ketersediaan

### 3. Pengembangan API
- [ ] REST API untuk:
  - Daftar dan detail buku
  - Manajemen peminjaman
  - Data mahasiswa

### 4. Pengembangan UI/UX
- [ ] Implementasi template responsif
- [ ] Integrasi Bootstrap atau Tailwind CSS
- [ ] Komponen interaktif dengan JavaScript

### 5. Testing dan Dokumentasi
- [ ] Unit testing untuk models
- [ ] Integration testing untuk views
- [ ] Dokumentasi API
- [ ] Panduan pengguna

## Timeline
1. Sprint 1 (2 minggu): Views dan Templates dasar
2. Sprint 2 (2 minggu): Fitur tambahan dan API
3. Sprint 3 (1 minggu): UI/UX
4. Sprint 4 (1 minggu): Testing dan dokumentasi

## Teknologi yang Digunakan
- Django
- Django REST framework (untuk API)
- Bootstrap/Tailwind CSS
- JavaScript
- SQLite/PostgreSQL
