from django.http import HttpResponse
from  django.shortcuts import render
from django.core.context_processors import csrf
from hello.models import *
#引入我们创建的表单类
from .forms import AddForm
def hello(request):
    return HttpResponse("<h1>I have a dream!--徐晓雨1111</h1>")
def info(request):
    #模板文本：分离文档的表现形式和内容
    context = {}
    context['hello'] = '请输入2个数字'
    context['name']=['耐克','阿迪达斯','安踏']
    context['price']=('200','600','50')
    context['me']='xuxiaoyu'
    context['dd']={'name': 'john','code':6734, 'dept': 'sales'}

    return render(request,'hello.html',context)
def add(request):
    a = request.GET['a']
    b = request.GET['b']
    a = int(a)
    b = int(b)
    return HttpResponse(str(a+b))
def testdb(request):
    response =""
    response1 =""
    list = Author.objects.all() #select * from
    for var in list:
        response1 +=var.name+"-"
        response = response1
    return HttpResponse("<p>"+response+"<p>")
#接收post请求数据---------出错
# def login(request):
#     ctx = {}
#     ctx.update(csrf(request))
#     if request.POST:
#         ctx['rlt']= request.POST['name']
#         return render(request,"login.html",ctx)
def index(request):
    if request.method == 'POST':
        form = AddForm(request.POST)
        if form.is_valid():
            x = form.cleaned_data['x']
            y = form.cleaned_data['y']
            return HttpResponse(str(int(x)+ int(y)))
    else:
        form = AddForm()
        return render(request,'index.html',{'form':form})

