from django.shortcuts import render, redirect
from .forms import MemberForm

def member_form(request):
    if request.method == 'POST':
        form = MemberForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('success')  # Redirect to a success page
    else:
        form = MemberForm()
    return render(request, 'member_form.html', {'form': form})


def success(request):
    return render(request, 'success.html')  # Renders a simple success page
