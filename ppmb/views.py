from django.shortcuts import render, redirect
from django.http import HttpResponse, HttpResponseRedirect
from .models import Pendaftar, Prodi
from django.urls import reverse

# Create your views here.

def index(request):
    return render(request, 'index.html', {'data': 'data'})

def login(request):
    return render(request, 'login.html')

def tampil(request):
    pendaftar = Pendaftar.objects.all()
    return render(request, 'tampil.html', {'pendaftar': pendaftar})

def registrasi_form(request):
    s1 = Prodi.objects.filter(jenjang='s1').order_by('nama')
    d4 = Prodi.objects.filter(jenjang='d4').order_by('nama')
    d3 = Prodi.objects.filter(jenjang='d3').order_by('nama')
    return render(request, 'registrasi.html', {
    's1': s1, 'd4': d4, 'd3': d3
    })

def registrasi(request):
    data = request.POST
    try:
        pil1 = Prodi.objects.get(pk=data['pil1'])
        pil2 = Prodi.objects.get(pk=data['pil2'])
        pil3 = Prodi.objects.get(pk=data['pil3'])
        pendaftar = Pendaftar(
            nik=data['nik'],
            nama=data['nama'],
            tempat_lahir=data['tempat_lahir'],
            tanggal_lahir=data['tanggal_lahir'],
            asal_sekolah=data['asal_sekolah'],
            jenis_kelamin=data['jenis_kelamin'],
            agama=data['agama'],
            no_seluler=data['no_seluler'],
            tlp_rumah=data['tlp_rumah'],
            email=data['email'],
            alamat=data['alamat'],
            pilihan1=pil1,
            pilihan2=pil2,
            pilihan3=pil3
        )
        pendaftar.save()

    except:
        return HttpResponse('error')
    else:
        return redirect('ppmb:registrasi-form')
