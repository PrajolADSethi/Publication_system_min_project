from django.shortcuts import render

def home(request):
    return render (request, 'index.html')
def covid(request):
    return render (request, 'covid.html')
def tech(request):
    return render (request, 'tech.html')
def science(request):
    return render (request, 'science.html')
def general(request):
    return render (request, 'general.html')
def upload(request):
    return render (request, 'upload.html')