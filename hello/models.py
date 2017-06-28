from django.db import models
#添加表 author 和article
#一个模型是一个python类并且是django.db.models.model的子类
#表名组成结构：app名_类名
class Author(models.Model):
    name = models.CharField(max_length=100)
    age = models.IntegerField()
    hobby = models.CharField(max_length=50,null=True)
    def __str__(self):
        return self.name
class Article(models.Model):
    title =models.CharField(max_length=200)
    content = models.TextField()
    url = models.URLField()
    portal = models.ImageField()
    author = models.ForeignKey(Author)

    def __str__(self):
        return self.title