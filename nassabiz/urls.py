from django.urls import path
from .import views
urlpatterns = [
    path('page/index', views.index, name="index"),
    path('page/<slug:slug>', views.pages)
]