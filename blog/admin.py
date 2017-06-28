from django.contrib import admin

from blog.models import *
# admin.site.register(Article)
#注册模型
#定制admin后台
class PostAdmin(admin.ModelAdmin):
    list_display = ['title','create_time','modified_time','category','author']
admin.site.register(Post,PostAdmin)
admin.site.register(Category)

