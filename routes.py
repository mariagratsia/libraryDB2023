from flask import Flask, render_template, request, flash, redirect, url_for, abort, session
from AbsoluteMinds.__init__ import app, db 
from flask_mysqldb import MySQL

@app.route('/')
def home():
    #cur = db.connection.cursor()
    #cur.execute=("SELECT school_name, city, email FROM school_library order by school_name")
    #school_names = [i[0] for i in cur.description]
    return render_template('homepage.html')

@app.route('/schools')
def schools():
    return 'Here are our schools:'

@app.route('/register')
def register():    
    return 'New registration:'

@app.route('/books')
def books():    
    return 'Books:'

@app.route('/login', methods=['POST', 'GET'])
def login():
    #output message
    message = ''
    return render_template('login.html', message='')
    if request.method =='POST' and 'username' in request.form and 'password' in request.form:
        #create variables
        username = request.form('username')
        password = request.form('password')
        #open connection to database
        cur = db.connection.cursor()
        cur.execute('SELECT user_id, myusername, mypassword FROM  WHERE username = %s AND password = %s', (username, password,))
        account = cur.fetchone()
        # If account exists in accounts table in out database
        if account:
            # Create session data, we can access this data in other routes
            session['loggedin'] = True
            session['id'] = account['user_id']
            session['username'] = account['myusername']
            # Redirect to home page
            return 'Welcome {username}'
        else:
            # Account doesnt exist or username/password incorrect
            message = 'Incorrect username/password!'
    return render_template('login.html', message = message)
