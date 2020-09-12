from django.shortcuts import render, get_object_or_404
from .models import BlogModel, NavModel, PrimaryNav, SecondNav, NavMenuModel

# Create your views here.

def index(request):
    image = BlogModel.objects.filter(['title', 'image'])
    nav = NavModel.objects.filter()
    context = {
        'title':'Home',
        'image': image,
        'nav':nav
    }

    return render(request, 'page/index.html', context)


def pages(request, slug):
    nav = NavModel.objects.filter()
    page_content = get_object_or_404(BlogModel, slug=slug)
    context = {
        "page":page_content,
        "nav": nav
    }
    return render(request, 'page/page.html', context)