from django.shortcuts import render,get_object_or_404,redirect
from blog.models import Post
from .forms import CommentForm
def post_comment(request,post_pk):
    post = get_object_or_404(Post,pk=post_pk)
    if request.method == 'POST':#当表单提交时
        form = CommentForm(request.POST) #form包含提交的数据
        if form.is_valid(): #如果提交的数据合法
            comment = form.save(commit=False)
            comment.post = post
            comment.save()
            return redirect(post)
        else:
          comment_list =  post.comment_set.all()#等价于comment.objects.filter(post=post)返回post关联的列表
          # comment_num  =  post.comment_set.count()#post下有多少条评论
          context = {'post':post,
                   'form':form,
                   'comment_list':comment_list
                    }
          return render(request,'blog/detail1.html',context=context)

    return redirect(post)