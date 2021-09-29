from django.urls import path, include
from app import views
from app.dash_apps import example

urlpatterns = [
    path('', views.index, name='index'),
]