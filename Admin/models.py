from django.db import models


# Create your models here.
class Account(models.Model):
    id              =models.AutoField(primary_key=True)
    user_name       =models.CharField(max_length=100)
    email           =models.EmailField(max_length=150)
    phone_number    =models.CharField(max_length=20)
    user_type       =models.BooleanField(default=False)
    password 		=models.CharField(max_length=50)

class MCQ_Question(models.Model):
    id                  =models.AutoField(primary_key=True)
    question            =models.CharField(max_length=400)
    ans_a               =models.CharField(max_length=200)
    ans_b               =models.CharField(max_length=200)
    ans_c               =models.CharField(max_length=200)
    ans_d               =models.CharField(max_length=200)
    carrect_ans         =models.CharField(max_length=2)
    marks               =models.IntegerField(max_length=3)


class MCQ_Options(models.Model):
    option              =models.CharField(max_length=2)


    def __str__(self):
        return self.option



class User_Ans(models.Model):
    user_id              =models.IntegerField()
    question_id          =models.IntegerField()
    ans_is_carrect       =models.ForeignKey(MCQ_Options, default=None, on_delete= models.CASCADE)