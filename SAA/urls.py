from django.urls import path
from django.conf import settings
from django.conf.urls.static import static
from . import views

urlpatterns = [
    path('',views.index, name='index'),
    path('home/<int:id>/', views.home, name='home'),
    path('addmovie',views.addmovie,name='addmovie')
    
]+ static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)