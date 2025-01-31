from django.contrib import admin
from .models import Mahasiswa, Buku, Peminjaman

from import_export.admin import ExportMixin,ImportExportMixin
from import_export import resources



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
    class Meta:
        model = Peminjaman 

class PeminjamanAdmin(ExportMixin, admin.ModelAdmin):
    resource_class = PeminjamanResource
    list_filter = (('tanggal_pinjam'),( 'tanggal_kembali'))
    list_display = ('nim', 'id_buku', 'tanggal_pinjam', 'tanggal_kembali','id_petugas')
    search_fields = ['nim__nim', 'id_buku__judul']
    exclude = ('id_petugas',)
    
    def save_model(self, request, obj, form, change):
        if not obj.pk:
            obj.id_petugas = request.user
        super().save_model(request, obj, form, change)
    

admin.site.register(Mahasiswa,MahasiswaAdmin)
admin.site.register(Buku,BukuAdmin)
admin.site.register(Peminjaman,PeminjamanAdmin)