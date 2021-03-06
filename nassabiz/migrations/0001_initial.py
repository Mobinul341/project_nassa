# Generated by Django 3.0 on 2020-09-09 04:35

import ckeditor.fields
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='BlogModel',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=200)),
                ('subtitle', models.CharField(max_length=200)),
                ('article', ckeditor.fields.RichTextField(blank=True, null=True)),
                ('slug', models.SlugField(blank=True, max_length=200, null=True)),
                ('image', models.ImageField(blank=True, null=True, upload_to='img')),
            ],
        ),
        migrations.CreateModel(
            name='PrimaryNavManager',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
        ),
        migrations.CreateModel(
            name='SecondaryNavManager',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
        ),
        migrations.CreateModel(
            name='NavModel',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('slug', models.CharField(max_length=100)),
                ('primary', models.BooleanField(default=False)),
                ('parent', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='children', to='nassabiz.NavModel')),
            ],
        ),
        migrations.CreateModel(
            name='PrimaryNav',
            fields=[
            ],
            options={
                'verbose_name': 'Primary Nav',
                'verbose_name_plural': 'Primary Navs',
                'proxy': True,
                'indexes': [],
                'constraints': [],
            },
            bases=('nassabiz.navmodel',),
        ),
        migrations.CreateModel(
            name='SecondNav',
            fields=[
            ],
            options={
                'verbose_name': 'Sub Nav',
                'verbose_name_plural': 'Sub Navs',
                'proxy': True,
                'indexes': [],
                'constraints': [],
            },
            bases=('nassabiz.navmodel',),
        ),
        migrations.CreateModel(
            name='NavMenuModel',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('slug', models.SlugField(max_length=100)),
                ('parent', models.BooleanField(default=False)),
                ('parent_menu', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='children', to='nassabiz.NavMenuModel')),
            ],
            options={
                'verbose_name_plural': 'navs',
                'unique_together': {('slug',)},
            },
        ),
    ]
