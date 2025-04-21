# sit727prac2.3/urls.py

from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('', include('app.urls')),  # This tells Django to use your app's URLs
    # path('admin/', admin.site.urls),
]
