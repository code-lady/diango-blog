from django.db import models
#编写具体的模型
class Comment(models.Model):
    name = models.CharField(max_length=100)
    email = models.EmailField(max_length=255)
    url = models.URLField(blank=True)
    text = models.TextField()
    created_time = models.DateTimeField(auto_now_add=True)
    #auto_now_add:当评论保存到数据库时，自动把时间制定为当前时间
    post = models.ForeignKey('blog.Post')
    def __str__(self):
        return self.text[:20]
