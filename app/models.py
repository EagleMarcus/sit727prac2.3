from django.db import models

class Member(models.Model):
    first_name = models.CharField(max_length=100)
    last_name = models.CharField(max_length=100)
    dob = models.DateField()
    mobile_number = models.CharField(max_length=15)
    email = models.EmailField()
    address = models.CharField(max_length=255)
    suburb = models.CharField(max_length=100)
    state = models.CharField(max_length=100)
    post_code = models.CharField(max_length=10)

    def __str__(self):
        return f"{self.first_name} {self.last_name}"
