from django.shortcuts import render, HttpResponse

"""首页"""
def index(request):

    return render(request, "index.html")