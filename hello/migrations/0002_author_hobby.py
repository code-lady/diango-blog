# -*- coding: utf-8 -*-
# Generated by Django 1.9.13 on 2017-05-12 01:32
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('hello', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='author',
            name='hobby',
            field=models.CharField(max_length=50, null=True),
        ),
    ]
