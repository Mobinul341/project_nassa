from django.urls import path
from .import views


urlpatterns = [

    path('', views.craftedRedirect),
    path('page/index', views.index),
    path('page/<slug:slug>', views.pages)
]
