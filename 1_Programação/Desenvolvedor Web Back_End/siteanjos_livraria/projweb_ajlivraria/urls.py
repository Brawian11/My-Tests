"""
URL configuration for projweb_ajlivraria project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from appweb_ajlivraria import views

urlpatterns = [
    #path('admin/', admin.site.urls),
    path('', views.pginicio, name='pginicio'),
    path('usuarios/',views.cad_sistem, name ='cad_sistem'),
    path('usuarios',views.cad_func, name ='cad_func'),
    path('clientes/',views.cad_editora, name= 'cad_editora'),
    path('clientes',views.cad_cliente, name= 'cad_cliente'),
    path('usuarios//', views.cad_autor, name= 'cad_autor'),
    path('usuarios///',views.cad_livro, name='cad_livro'),
    path('usuarios////',views.cad_pedido, name='cad_pedido')
]
