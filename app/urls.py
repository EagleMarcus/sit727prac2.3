from django.urls import path
from . import views

urlpatterns = [
    path('', views.member_form, name='member_form'),  # The form view
    path('success/', views.success, name='success'),  # Success page
]
