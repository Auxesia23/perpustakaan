from django.urls import path
from .views import chart_data

urlpatterns = [
    path('data/',chart_data, name="data")
]
