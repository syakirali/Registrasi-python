from django.db import models

# Create your models here.

class Fakultas(models.Model):
    nama = models.CharField(max_length=50)
    def __str__(self):
        return self.nama

class Prodi(models.Model):
    """docstring for Prodi."""
    fakultas = models.ForeignKey(
        'Fakultas',
        on_delete=models.CASCADE,
    )
    nama = models.CharField(max_length=50)
    jenjang = models.CharField(max_length=10)
    akreditasi = models.CharField(max_length=2)
    def __str__(self):
        return self.nama

class Pendaftar(models.Model):
    """docstring for ."""
    nik = models.CharField(primary_key=True, max_length=20)
    nama = models.CharField(max_length=50)
    tempat_lahir = models.CharField(max_length=50)
    tanggal_lahir = models.DateField(auto_now=False, auto_now_add=False)
    asal_sekolah = models.CharField(max_length=50)
    jenis_kelamin = models.CharField(max_length=1)
    agama = models.CharField(max_length=15)
    no_seluler = models.CharField(max_length=15)
    tlp_rumah = models.CharField(max_length=15)
    email = models.CharField(max_length=50)
    alamat = models.CharField(max_length=100)
    pilihan1 = models.ForeignKey(
        'Prodi',
        on_delete=models.CASCADE,
        related_name='pilihan1'
    )
    pilihan2 = models.ForeignKey(
        'Prodi',
        on_delete=models.CASCADE,
        related_name='pilihan2'
    )
    pilihan3 = models.ForeignKey(
        'Prodi',
        on_delete=models.CASCADE,
        related_name='pilihan3'
    )
    created_at = models.DateField(auto_now=False, auto_now_add=True)
    updated_at = models.DateField(auto_now=True, auto_now_add=False)
    def __str__(self):
        return self.nama
