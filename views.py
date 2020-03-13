from django.shortcuts import render, get_object_or_404, redirect
import time
import numpy as np
# Create your views here.
from .models import Account, MCQ_Question, User_Ans
from .forms import accounts_create, accounts_edit, Mcq_Question_Add, Users_Ans

#Start/ Home form view code
def home(request):
	if request.method=='POST':
		name= request.POST['Name']
		password= request.POST['Password']
		one= Account.objects.get(user_name=name)
		#two= Account.objects.get(password=password)

		account= Account.objects.all()
		if True:
			context= {
			'accounts':account,
			'form':one
			}
			return render(request, 'home.html', context)
	else:
		return render(request, 'loging.html', {})


# def home_test(request):

# 	import pdb;
# 	if request.method=='POST':
# 		name= request.POST['Name']
# 		password= request.POST['Password']
# 		one= Account.objects.get(user_name=name)
# 	#two= Account.objects.get(password=password)

# 		account= Account.objects.all()
# 		# pdb.set_trace()		
# 		if True:
# 			# context= {
# 			# 'accounts':account,
# 			# 'form':one
# 			# }
# 			return render(request, 'home.html')



# User Account edit view code
def edit_profile(request, id):
	obj= get_object_or_404(Account, id= id)
	form= accounts_edit(request.POST, instance=obj)
	if form.is_valid():
		form.save()
	context={
	'form':form,
	'uid':obj.user_type

		}

	return render(request, 'Admin_fol/Create_an_account/Account_edit.html', context)


# New account view code
def Account_create(request):
	form= accounts_create(request.POST or None)
	if form.is_valid():
		form.save()
	context={
	'form': form
	}
	return render (request, 'Admin_fol/Create_an_account/New_account.html',context)

#Account delete view code
def delete_account(request, id):
	dele = Account.objects.get(id= id)
	dele.delete()

	account=Account.objects.all()
	context={
	'accounts':account
	}

	return render(request, 'home.html', context)


#Futute exma list linkup view code
def Futute_exam_List(request):
	return render(request, 'user/future_exam_form.html', {})


def user_dashboard(request, id):
	marks=[]
	form= Account.objects.get(id=id)
	number_of_exam= User_Ans.objects.filter(user_id=id)
	for m in number_of_exam:
		q_id= MCQ_Question.objects.get(id= m.question_id)
		marks.append(q_id.marks)
	context={
	'form':form,
	'ans_number':len(number_of_exam),
	'total_marks':sum(marks)

	}

	return render (request, 'user/dashboard.html', context)

# add MCQ quesion database too
def mcq_question_add(request):
	form= Mcq_Question_Add(request.POST or None)
	if form.is_valid():
		form.save()
	context={
	'form': form
	}
	return render(request, 'Admin_fol/Question/MCQ.html', context)


#Norman user Exam form load
def user_exam(request, id):
	obj= MCQ_Question.objects.all()
	options= Users_Ans(request.POST or None)


	lis=[]
	for valu in obj:
		lis.append(valu.id)

	import pdb;
	np.random.shuffle(lis)
	one= lis[0]
	lis.remove(one)
	one_value= MCQ_Question.objects.filter(id=one).first()
	# pdb.set_trace()

	context={

	'form':one_value,
	'opt':options
	}

	# context={
	# 'form':obj,
	# 'opt':options
	# }
	# if options.is_valid():
	# 	sav 	=options.save(commit=False)
	# 	sav.user_id		=id
	# 	sav.question_id =request.POST.get('qid')
	# 	sav.save()

	#return render(request, 'Admin_fol/Question/Exam_form.html', context)
	return render (request, 'user/ans_test.html', context)

# step by step data show try
def test(request):
	
	questions= MCQ_Question.objects.all()
	context={
	'form':questions
	}
	print('last')
	value= request.POST.get('send1')
	print(value)
	return render(request, 'for_loop.html', context)
