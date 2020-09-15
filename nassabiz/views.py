from django.shortcuts import render, get_object_or_404, redirect

from .models import BlogModel, NavModel, PrimaryNav, SecondNav, NavMenuModel



def index(request):
    image = BlogModel.objects.filter(['title', 'image'])
    nav = NavModel.objects.filter()
    context = {
        'title':'Home',
        'image': image,
        'nav':nav
    }

    return render(request, 'page/index.html', context)

#Redirected view 
'''
def craftedRedirect(request):
    url = 'page/index'
    return redirect(url, permanent=True)
'''

def craftedRedirect(request)
    try:
        url = 'page/index'
        return redirect(url, is_permanent=True, status_code=302)
    except url.DoesNotExist:
        return render(request, 'page/index.html', {})




def pages(request, slug):
    nav = NavModel.objects.filter()
    page_content = get_object_or_404(BlogModel, slug=slug)
    context = {
        "page":page_content,
        "nav": nav
    }
    return render(request, 'page/page.html', context)
