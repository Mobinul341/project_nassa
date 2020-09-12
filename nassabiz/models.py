from django.db import models
from .navmanager import PrimaryNavManager, SecondaryNavManager
from ckeditor.fields import RichTextField
# Create your models here.

class BlogModel(models.Model):
    title = models.CharField(max_length=200)
    subtitle = models.CharField(max_length=200, blank=True, null=True)
    article = RichTextField(blank = True, null = True)
    slug = models.SlugField(max_length=200,blank = True, null = True )
    image = models.FileField(upload_to ='img', blank = True, null = True )
    

    def __str__(self):
        return self.title

class NavModel(models.Model):
    name = models.CharField(max_length=100)
    slug = models.CharField(max_length=100)
    parent = models.ForeignKey('self', related_name='children', on_delete = models.CASCADE, blank=True, null=True)
    primary = models.BooleanField(default=False)

    def __str__(self):
        return self.name

class PrimaryNav(NavModel):
    objects = PrimaryNavManager


    class Meta:
        proxy = True
        verbose_name = 'Primary Nav'
        verbose_name_plural = 'Primary Navs'

class SecondNav(NavModel):
    objects = SecondaryNavManager


    class Meta:
        proxy = True
        verbose_name = 'Sub Nav'
        verbose_name_plural = 'Sub Navs'


class NavMenuModel(models.Model):
    name = models.CharField(max_length=100)
    slug = models.SlugField(max_length=100)
    parent_menu = models.ForeignKey('self', related_name = 'children', on_delete=models.CASCADE, blank=True, null=True)
    parent = models.BooleanField(default=False)

    class Meta:
        unique_together = ('slug',)
        verbose_name_plural = 'navs'

    def __str__(self):
        return self.name    


