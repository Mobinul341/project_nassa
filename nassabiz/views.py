from django.shortcuts import render, get_object_or_404, redirect

from .models import BlogModel, NavModel, PrimaryNav, SecondNav, NavMenuModel, PressModel



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

def craftedRedirect(request):
    url = 'page/index'
    return redirect(url, permanent=True)






def pages(request, slug):
    nav = NavModel.objects.filter()
    page_content = get_object_or_404(BlogModel, slug=slug)
    context = {
        "page":page_content,
        "nav": nav
    }
    return render(request, 'page/page.html', context)



def press(request, press_id):
    press = PressModel.objects.get(id=press_id)
    context = {
        "press":press
    }
    return render(request, 'page/press.html', context)