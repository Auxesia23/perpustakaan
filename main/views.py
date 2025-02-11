from django.http import JsonResponse
from django.contrib.admin.views.decorators import staff_member_required
from django.utils.timezone import now
from django.db.models import Count
from .models import Peminjaman, Mahasiswa, Buku

@staff_member_required
def chart_data(request):
    """Mengambil data statistik perpustakaan untuk dashboard admin."""
    
    # Hitung jumlah status peminjaman
    status_counts = Peminjaman.objects.values("status").annotate(total=Count("status"))
    status_data = {status["status"]: status["total"] for status in status_counts}

    # Data jumlah mahasiswa dan buku
    total_mahasiswa = Mahasiswa.objects.count()
    total_buku = Buku.objects.count()

    # Data jumlah peminjaman per hari (format YYYY-MM-DD)
    peminjaman_per_hari = (
        Peminjaman.objects.values("tanggal_pinjam")
        .annotate(total=Count("id"))
        .order_by("tanggal_pinjam")
    )
    peminjaman_harian = {str(item["tanggal_pinjam"]): item["total"] for item in peminjaman_per_hari}

    # Hitung jumlah peminjaman hari ini
    hari_ini = now().date()
    peminjaman_hari_ini = Peminjaman.objects.filter(tanggal_pinjam=hari_ini).count()

    # Gabungkan semua data dalam satu JSON response
    data = {
        "status_peminjaman": status_data,
        "total_mahasiswa": total_mahasiswa,
        "total_buku": total_buku,
        "peminjaman_harian": peminjaman_harian,
        "peminjaman_hari_ini": peminjaman_hari_ini,
    }

    return JsonResponse(data)
