"""final_E_exam URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from Admin.views import *
#from Admin.views import home, edit_profile, Account_create, delete_account, dashboard_user, Futute_exam_List
urlpatterns = [
    #django admin
    path('admin/', admin.site.urls),
    #login home view
    path('', home, name='home'),

    path('create_account/', Account_create),

	#path for editing accounts profile
	path('Edit/<int:id>/',edit_profile, name='Edit_Profile'),

	#path for deleting account 
	path('Delete/<int:id>/',delete_account, name='Delete_Account'),

	#Future exam list form linkup here
	path('futuexam/', Futute_exam_List),

    #Normal user dashboard linkup here
    path('home/userprofile/<int:id>/', user_dashboard, name='User_Dashboard'),

    #Add MCQ questions code
    path('mcq/', mcq_question_add),

    #Exam form load code here
    path('home/profile/<int:id>/exam/', user_exam, name='exam'), # here i have to use the function (user_exam)

    path('test/', test),

    #path('home/text/', home_test, name='home_test')

]
