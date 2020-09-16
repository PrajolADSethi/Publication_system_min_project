from django.shortcuts import render, redirect
from django.views.generic import View
from django.db import connection
import pandas as pd
import mysql.connector


def home(request):
    return render (request, 'index.html')
def covid(request):
    
   
#    with connection.cursor() as cursor:
#        cursor = connection.cursor()
            connection = mysql.connector.connect(host='localhost',database='ACTIVE',
                                             user='root',
                                             password='iamjolly20')
    
            cur = connection.cursor()
            cursor.execute("Select * from ARTICLE where AREA_OF_RESEARCH='Covid';")
            data1 = cur.fetchall()
            df=pd.DataFrame(data1,columns=["DOI","AUTHOR_NAME","TITLE","LINK"])
            print(df)
            html=df.to_html()
            text_file = open("publicationApp\templates\covd.html", "w")
            text_file.write(html)
            text_file.close()
            return render (request, 'covid.html')
                   
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
