from django.shortcuts import render,get_object_or_404
from .models import Post,Category
import markdown    #引入markdown模块

from  comments.forms import CommentForm
def index(request):
    post_list = Post.objects.all().order_by('-create_time')
    return render(request,'blog/index1.html',context={
        'post_list':post_list
    })
#get_object_or_404:当传入的pk对应的post在数据库中存在时，就返回post，如果不存在，就给用户返回404错误，表示请求的文章不存在
def detail(request,pk):
    post = get_object_or_404(Post,pk=pk)

    #阅读量+1
    post.increase_views()

    post.body = markdown.markdown(post.body,
                                  extensions=[
                                      'markdown.extensions.extra',
                                      'markdown.extensions.codehilite',
                                      'markdown.extensions.toc',
                                  ])
    form = CommentForm()
    comment_list = post.comment_set.all() #获取这篇post的全部评论
    context ={
        'post':post,
        'form':form,
        'comment_list':comment_list
    }
    return render(request,'blog/detail1.html',context=context)
    # return render(request,'blog/detail1.html',context={'post':post})
def archives(request,year,month):
    post_list = Post.objects.filter(create_time__year=year,create_time__month=month).order_by('-create_time')
    return render(request,'blog/index1.html',context={'post_list':post_list})
def category(request,pk):
    cate = get_object_or_404(Category,pk=pk)
    post_list = Post.objects.filter(category=cate).order_by('-create_time')
    return render(request,'blog/index1.html',context={'post_list':post_list})