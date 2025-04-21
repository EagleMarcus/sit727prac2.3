from django import forms
from .models import Member

class MemberForm(forms.ModelForm):
    class Meta:
        model = Member
        fields = [
            'first_name',
            'last_name',
            'dob',
            'mobile_number',
            'email',
            'address',
            'suburb',
            'state',
            'post_code'
        ]

    def clean_mobile_number(self):
        mobile_number = self.cleaned_data.get('mobile_number')
        if not mobile_number.isdigit():
            raise forms.ValidationError('Mobile number must contain only digits.')
        return mobile_number

    def clean_post_code(self):
        post_code = self.cleaned_data.get('post_code')
        if not post_code.isdigit():
            raise forms.ValidationError('Post code must contain only digits.')
        return post_code
