from dataclasses import fields
from django.contrib import admin
from django.utils.html import format_html
from .models import Mahasiswa, Buku, Peminjaman
from django.contrib.auth.models import User


from datetime import datetime
from import_export.fields import Field
from import_export.formats.base_formats import XLSX
from import_export import fields
from import_export.widgets import ForeignKeyWidget

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
    id_petugas = fields.Field( column_name='author',
        attribute='author',
        widget=ForeignKeyWidget(User, field='id'))

    class Meta:
        model = Peminjaman
        import_id_fields = ['nim','id_buku']
    
class PeminjamanAdmin(ImportExportMixin, admin.ModelAdmin):
    resource_class = PeminjamanResource
    list_filter = ('tanggal_pinjam', 'tanggal_kembali', 'status')  
    list_display = ('nim', 'id_buku', 'tanggal_pinjam', 'tanggal_kembali', 'status', 'id_petugas', 'keterlambatan_hari')
    search_fields = ['nim__nim', 'id_buku__judul', 'status']

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