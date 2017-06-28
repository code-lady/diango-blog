from django import forms #引入form模块
from .models import Comment
#表单代码--编写具体的表单
class CommentForm(forms.ModelForm):
    #表单的内部类meta,可以通过制定一些属性来规定这个类该有的一些特性
    class Meta:
        model = Comment     #表明这个表单对应的数据库模型：comment
        fields = ['name','email','url','text']  #表单不需要继承comment的模型的全部属性，就进行限定属性