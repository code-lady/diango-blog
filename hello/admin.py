from django.contrib import admin

from hello.models import *
# admin.site.register(Article)
class ArticleAdmin(admin.ModelAdmin):
    fileds=('title','author')
admin.site.register(Author)
admin.site.register(Article,ArticleAdmin)
