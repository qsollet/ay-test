from django.shortcuts import render
from django.http import HttpResponse
from django.contrib.auth.decorators import login_required
from django.views.decorators.csrf import csrf_exempt


@login_required
def home(request):
    return render(request, 'home.html')

@csrf_exempt
@login_required
def update_user_email(request):
    if request.method == 'POST':
        request.user.email = request.POST.get('email')
        request.user.save()
    return HttpResponse('OK')
