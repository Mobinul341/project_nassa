# Generated by Django 3.0 on 2020-09-13 11:17

import ckeditor.fields
from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('nassabiz', '0004_auto_20200913_1706'),
    ]

    operations = [
        migrations.AlterField(
            model_name='blogmodel',
            name='article',
            field=ckeditor.fields.RichTextField(blank=True, null=True),
        ),
    ]
