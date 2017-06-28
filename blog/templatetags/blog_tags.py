#自定义模板标签代码(模板标签本质上就是一个python函数)
from  ..models import Post,Category
from django import template
register = template.Library() #实例化template.library类
#获取数据库中前num篇文章
@register.simple_tag
def get_recent_posts(num=5):
    return Post.objects.all().order_by('-create_time')[:num]
#归档模板
@register.simple_tag
def archives():
    return Post.objects.dates('create_time','month',order='DESC')
#分类模板标签
@register.simple_tag
def get_categories():
    return Category.objects.all()