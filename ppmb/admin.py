from django.contrib import admin

from .models import Fakultas, Prodi, Pendaftar

# Register your models here.

admin.site.register(Fakultas)
admin.site.register(Prodi)
admin.site.register(Pendaftar)
