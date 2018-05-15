from django.urls import path

from . import views

app_name = 'ppmb'
urlpatterns = [
    path('', views.index, name='index'),
    path('login', views.login, name='login'),
    path('tampil', views.tampil, name='tampil'),
    path('registrasi', views.registrasi_form, name='registrasi-form'),
    path('submit', views.registrasi, name='registrasi'),
]
