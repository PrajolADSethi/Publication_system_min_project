from django.shortcuts import render, redirect
from django.views.generic import View
from django.db import connection


def home(request):
    return render (request, 'index.html')
def covid(request):
   
    with connection.cursor() as cursor:
#        cursor = connection.cursor()
        cursor.execute("Select * from ARTICLE where AREA_OF_RESEARCH='Covid';")
        records1 = cursor.fetchall() 
#    print(records1[1][2])
#    print(records1[0])
    context={
        'value':records1[0][2], 
        
    }
#    
#    for context in records1:
#        for i in range:
#            context={
#                
#               'value':records1[i]
#                i =+ 1
#            }  
#            
#     for i in records1:
#        
#        print(records1[i])
#        
#            for j in d[i]:
#                print j   
        
        
          
        
    return render (request, 'covid.html',context)
                   
def tech(request):
    return render (request, 'tech.html')
#     with connection.cursor() as cursor:
#    cursor.execute("Select * from ARTICLE where AREA_OF_RESEARCH='Technology';",                   
def science(request):
    return render (request, 'science.html')
#     with connection.cursor() as cursor:
#    cursor.execute("Select * from ARTICLE where AREA_OF_RESEARCH='Science';",               
def general(request):
    return render (request, 'general.html')
#     with connection.cursor() as cursor:
#    cursor.execute("Select * from ARTICLE where AREA_OF_RESEARCH='General';",               

class Upload(View):
    def get(self, request, *args, **kwargs):

        return render(request, 'upload.html')

    def post(self, request, *args, **kwargs):
            form = request.POST
            doi= form.get('doi')
            fname= form.get('firstname')
            lname= form.get('lastname')
            email= form.get('email')
            title= form.get('title')
            research= form.get('research')
            jname = form.get('jname')
            volume = form.get('volume')
            issue = form.get('issue')
            link = form.get('link') 
            
            with connection.cursor() as cursor:
                cursor.execute("INSERT into NEW_ENTRIES values(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s);",[doi,fname,lname,email,title,research,jname,volume,issue,link])
                print('success!!')
            return redirect("home")
