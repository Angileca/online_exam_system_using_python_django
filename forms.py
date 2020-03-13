from django import forms 
from .models import Account, MCQ_Question, User_Ans

class accounts_create(forms.ModelForm):
	class Meta:
		model= Account
		fields=[
		'user_name',
		'email',
		'phone_number',
		'user_type',
		'password'
		]
		#widgets = {'password': forms.PasswordInput()}

		widgets = {'user_name': forms.TextInput(attrs={'placeholder': 'User Name'}), 
					'email': forms.TextInput(attrs={'placeholder': 'E-Mail'}), 
					'phone_number': forms.TextInput(attrs={'placeholder': 'Phone Number'}), 
					'password': forms.PasswordInput(attrs={'placeholder': 'Password'})
				}

class accounts_edit(forms.ModelForm):
	class Meta:
		model= Account
		fields=[
		'id',
		'user_name',
		'email',
		'phone_number',
		'user_type',
		'password'
		]
		widgets = {'password': forms.PasswordInput()}
		

class Mcq_Question_Add(forms.ModelForm):
	class Meta:
		model= MCQ_Question
		fields=[
		'question',
		'ans_a',
		'ans_b',
		'ans_c',
		'ans_d',
		'carrect_ans',
		'marks'
		]


class Users_Ans(forms.ModelForm):
	class Meta:
		model= User_Ans
		fields=[
		'ans_is_carrect'
		]