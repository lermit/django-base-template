""" Views for the base application """

from django.shortcuts import render


def home(request):
    """ Default view for the root """
    return render(request, 'base/home.html')

def about(request):
    """ Default view for the root """
    return render(request, 'base/about.html')

def contact(request):
    """ Default view for the root """
    return render(request, 'base/contact.html')
