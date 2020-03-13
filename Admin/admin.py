from django.contrib import admin
from .models import Account, MCQ_Question, User_Ans, MCQ_Options
# Register your models here.
admin.site.register(Account)

admin.site.register(MCQ_Question)

admin.site.register(User_Ans)

admin.site.register(MCQ_Options)