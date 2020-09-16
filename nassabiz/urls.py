from django.urls import path
from .import views


urlpatterns = [

    path('', views.craftedRedirect),
    path('page/index', views.index, name="index"),
    path('page/<slug:slug>', views.pages),
    path('page/press/<str:press_id>', views.press)
]
