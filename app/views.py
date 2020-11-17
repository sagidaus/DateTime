from flask import render_template
from app import app
import datetime

@app.route('/')
def home():
   print ('I got clicked!')
   now = datetime.datetime.now()
   return str(now.strftime("%Y-%m-%d %H:%M:%S"));

@app.route('/template')
def template():
    return render_template('home.html')

