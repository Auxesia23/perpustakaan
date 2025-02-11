from django.contrib import admin
from django.utils.html import format_html
from .models import Mahasiswa, Buku, Peminjaman


from datetime import datetime
from import_export.fields import Field
from import_export.formats.base_formats import XLSX

from import_export.admin import ImportExportMixin
from import_export import resources

from datetime import date


# Register your models here.
class BukuResource(resources.ModelResource):
    class Meta:
        model = Buku  

class BukuAdmin(ImportExportMixin, admin.ModelAdmin):
    resource_class = BukuResource
    search_fields = ['judul']  




class MahasiswaResource(resources.ModelResource):
    class Meta:
        model = Mahasiswa  
        import_id_fields = ['nim']

class MahasiswaAdmin(ImportExportMixin, admin.ModelAdmin):
    resource_class = MahasiswaResource
    search_fields = ['nim']  
    


class PeminjamanResource(resources.ModelResource):
    nim = Field(attribute='nim', column_name='NIM Mahasiswa')
    id_buku = Field(attribute='id_buku', column_name='Judul Buku')
    tanggal_pinjam = Field(attribute='tanggal_pinjam', column_name='Tanggal Pinjam')
    tanggal_kembali = Field(attribute='tanggal_kembali', column_name='Tanggal Kembali')
    status = Field(attribute='status', column_name='Status Peminjaman')
    keterlambatan = Field(column_name='Keterlambatan (hari)')

    class Meta:
        model = Peminjaman
        fields = ('nim', 'id_buku', 'tanggal_pinjam', 'tanggal_kembali', 'status', 'keterlambatan')

    def dehydrate_tanggal_pinjam(self, obj):
        return obj.tanggal_pinjam.strftime('%d-%m-%Y')

    def dehydrate_tanggal_kembali(self, obj):
        return obj.tanggal_kembali.strftime('%d-%m-%Y')

    def dehydrate_keterlambatan(self, obj):
        if obj.status == "dikembalikan":
            return "0 hari" 

        hari_ini = date.today()
        if hari_ini > obj.tanggal_kembali:
            keterlambatan = (hari_ini - obj.tanggal_kembali).days
            return f"{keterlambatan} hari"
        
        return "0 hari"

    def before_export(self, queryset, *args, **kwargs):
        """ Bisa digunakan untuk log atau memproses data sebelum ekspor """
        print(f"Exporting {queryset.count()} records...")  


class PeminjamanAdmin(ImportExportMixin, admin.ModelAdmin):
    resource_class = PeminjamanResource
    list_filter = ('tanggal_pinjam', 'tanggal_kembali', 'status')  
    list_display = ('nim', 'id_buku', 'tanggal_pinjam', 'tanggal_kembali', 'status', 'id_petugas', 'keterlambatan_hari')
    search_fields = ['nim__nim', 'id_buku__judul', 'status']
    exclude = ('id_petugas',)

    def save_model(self, request, obj, form, change):
        if obj.status == "Dikembalikan":
            obj.tanggal_kembali = date.today() 
        if not obj.pk:
            obj.id_petugas = request.user
        super().save_model(request, obj, form, change)
        
    def get_export_formats(self):
        return [XLSX]



admin.site.register(Mahasiswa,MahasiswaAdmin)
admin.site.register(Buku,BukuAdmin)
admin.site.register(Peminjaman,PeminjamanAdmin)