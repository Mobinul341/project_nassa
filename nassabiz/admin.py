from django.contrib import admin
from django.contrib.auth.models import Group
from .models import BlogModel, NavModel, PrimaryNav, SecondNav, NavMenuModel

# Register your models here.
admin.site.register(BlogModel)


class SubnavInline(admin.TabularInline):
    model = SecondNav
    extra = 3
    fieldsets = ((None,{'fields':('name', 'slug')}),)

class PrimaryNavAdmin(admin.ModelAdmin):
    list_display = ('name', 'parent', 'slug', 'primary')
    list_editable = ('parent',)
    fieldsets = ((None,{'fields':('name', 'slug', 'primary')}),)
    inlines = [SubnavInline]

admin.site.register(PrimaryNav, PrimaryNavAdmin)

@admin.register(NavMenuModel)
class NavMenuAdmin(admin.ModelAdmin):
    list_display = ('name', 'slug', 'parent_menu', 'parent')




#Panel design
admin.site.unregister(Group)
admin.site.site_header = "NASSA Group Admin Panel"
admin.site.site_title = "NASSA admin"