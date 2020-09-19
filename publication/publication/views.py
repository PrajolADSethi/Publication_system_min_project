from django.shortcuts import render, redirect
from django.views.generic import View
from django.db import connection
import pandas as pd
import mysql.connector


def home(request):
    return render (request, 'index.html')
def covid(request):
    
   

            connection = mysql.connector.connect(host='localhost' ,database='try1',
                                             user='root',
                                             password='qwerty')
    
            cur = connection.cursor()
            cur.execute("Select * from ARTICLE where AREA_OF_RESEARCH='Covid';")
            data1 = cur.fetchall()
            df=pd.DataFrame(data1,columns=["DOI","AUTHOR_NAME","TITLE","DATE_OF_PUBLICATION","JOURNAL_ID","LINK","AREA_OF_RESEARCH"])
            print(df)
            html=df.to_html()
            text_file = open("publicationApp/templates/covid.html", "w", encoding="utf-8")
            text_file.write(html)
            text_file.close()
            return render (request,'covid.html')
                   
def tech(request):
            connection = mysql.connector.connect(host='localhost' ,database='try1',
                                             user='root',
                                             password='qwerty')
    
            cur = connection.cursor()
            cur.execute("Select * from ARTICLE where AREA_OF_RESEARCH='Medical';")
            data1 = cur.fetchall()
            df=pd.DataFrame(data1,columns=["DOI","AUTHOR_NAME","TITLE","DATE_OF_PUBLICATION","JOURNAL_ID","LINK","AREA_OF_RESEARCH"])
            print(df)
            html=df.to_html()
            text_file = open("publicationApp/templates/tech.html", "w", encoding="utf-8")
            text_file.write(html)
            text_file.close()
            return render (request,'tech.html')                 
def science(request):
    
            connection = mysql.connector.connect(host='localhost' ,database='try1',
                                             user='root',
                                             password='qwerty')
    
            cur = connection.cursor()
            cur.execute(" Select * from ARTICLE where AREA_OF_RESEARCH='Signaling' OR  AREA_OF_RESEARCH='Robotics';")
            data1 = cur.fetchall()
            df=pd.DataFrame(data1,columns=["DOI","AUTHOR_NAME","TITLE","DATE_OF_PUBLICATION","JOURNAL_ID","LINK","AREA_OF_RESEARCH"])
            print(df)
            html=df.to_html()
            text_file = open("publicationApp/templates/science.html", "w", encoding="utf-8")
            text_file.write(html)
            text_file.close()
            return render (request,'science.html')
             
def general(request):
            connection = mysql.connector.connect(host='localhost' ,database='try1',
                                             user='root',
                                             password='qwerty')
    
            cur = connection.cursor()
            cur.execute("Select * from ARTICLE where AREA_OF_RESEARCH='General';")
            data1 = cur.fetchall()
            df=pd.DataFrame(data1,columns=["DOI","AUTHOR_NAME","TITLE","DATE_OF_PUBLICATION","JOURNAL_ID","LINK","AREA_OF_RESEARCH"])
            print(df)
            html=df.to_html()
            text_file = open("publicationApp/templates/general.html", "w", encoding="utf-8")
            text_file.write(html)
            text_file.close()
            return render (request,'general.html')
           

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
