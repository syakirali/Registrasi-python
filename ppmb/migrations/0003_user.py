# Generated by Django 2.0.5 on 2018-05-18 13:10

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('ppmb', '0002_auto_20180515_1343'),
    ]

    operations = [
        migrations.CreateModel(
            name='User',
            fields=[
                ('email', models.CharField(max_length=75, primary_key=True, serialize=False)),
                ('password', models.CharField(max_length=100)),
                ('remember_token', models.CharField(max_length=100)),
            ],
        ),
    ]
