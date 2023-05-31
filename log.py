from flask import Flask, render_template, request, flash, redirect, url_for, abort, session, Blueprint
from flask_mysqldb import MySQL
from AbsoluteMinds import db
#from AbsoluteMinds import loginForm
#from flask_login import login_user, login_required, logout_user, current_user
#from werkzeug.security import generate_password_hash, check_password_hash 

log = Blueprint('log', __name__)

@log.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        myusername = request.form.get('myusername')
        password = request.form.get('password')
        #form = loginForm()
        cur = db.connection.cursor()
        q = ("SELECT myusername, mypassword FROM users WHERE myusername = %s AND mypassword = %s", myusername, password)
        cur.execute(q)
        login_result = cur.fetchone()
        cur.close()
        if login_result == 'NULL':
            flash('Incorrect password! Try again!')
        else:
            flash('Logged in successfully')
            session['username'] = myusername
        flash('Logged in successfully')
        #login_user() #needs username inside and remember=True
        return redirect(url_for('view.home'))
    #or flash('Incorrect password! Try again!')
    #or flash('Username does not exist!')
    return render_template("login.html")

@log.route('/logout')
#@login_required
def logout():
    #logout_user()
    return redirect(url_for(log.login))

@log.route('/register', methods=['GET', 'POST'])
def register():
    if request.method == 'POST': 
        user_first_name = request.form.get('user_first_name')
        user_last_name = request.form.get('user_last_name')
        birth_date = request.form.get('birth_date')
        myusername = request.form.get('myusername')
        password1 = request.form.get('password1')
        password2 = request.form.get('password2')
        
        if len(user_first_name) < 2:
            flash('First name must be greater than 1 character.')
        elif len(user_last_name) < 2:
            flash('Last name must be greater than 1 character.')
        elif len(myusername) < 4:
            flash('Username must be greater than 3 characters.')
        elif password1 != password2:
            flash('Passwords don\'t match.')
        elif len(password1) < 4:
            flash('Password must be longer than 3 characters.')
        else:
            #add user to database
            #login_user() #needs username inside and remember=True
            flash('Account created successfully!.')
            return redirect(url_for('view.home'))


    return render_template("register.html")
