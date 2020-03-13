# Generated by Django 3.0.2 on 2020-02-13 16:44

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('Admin', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Exam_Time_Control',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50)),
                ('total', models.IntegerField(max_length=3)),
                ('duration', models.IntegerField(max_length=2)),
            ],
        ),
        migrations.CreateModel(
            name='MCQ_Question',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('question', models.CharField(max_length=400)),
                ('ans_a', models.CharField(max_length=200)),
                ('ans_b', models.CharField(max_length=200)),
                ('ans_c', models.CharField(max_length=200)),
                ('ans_d', models.CharField(max_length=200)),
                ('carrect_and', models.CharField(max_length=2)),
                ('marks', models.IntegerField(max_length=3)),
                ('Q', models.CharField(max_length=20)),
            ],
            options={
                'verbose_name_plural': 'question',
            },
        ),
        migrations.AlterModelOptions(
            name='account',
            options={'verbose_name_plural': 'Account'},
        ),
        migrations.CreateModel(
            name='User_Ans',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('ans_is_carrect', models.IntegerField()),
                ('question_id', models.ForeignKey(default=1, on_delete=django.db.models.deletion.SET_DEFAULT, to='Admin.MCQ_Question', verbose_name='Question')),
                ('user_id', models.ForeignKey(default=1, on_delete=django.db.models.deletion.SET_DEFAULT, to='Admin.Account', verbose_name='Account')),
            ],
        ),
    ]
