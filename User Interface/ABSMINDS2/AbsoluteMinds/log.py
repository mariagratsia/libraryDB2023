from flask import Flask, render_template, request, flash, redirect, url_for, abort, session, Blueprint
from flask_mysqldb import MySQL
from AbsoluteMinds import db
from wtforms.validators import DataRequired, NumberRange, Email
from wtforms import StringField, SubmitField, SelectField, IntegerField

from AbsoluteMinds.forms import RegisterCredentials
from flask_wtf import FlaskForm

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
        q = "SELECT myusername, mypassword FROM users WHERE myusername = %s AND mypassword = %s"
        cur.execute(q, (myusername, password,))

        login_result = cur.fetchall()
       
        cur.close()

        if not login_result or not any(row[1] == password for row in login_result):
            flash('Incorrect password! Try again!')
            return redirect(url_for('log.login'))
        else:
            flash('Logged in successfully')
            session['username'] = myusername
            return redirect(url_for('view.home'))
    
    return render_template("login.html")

@log.route('/logout')
#@login_required
def logout():
    #logout_user()
    return redirect(url_for('log.login'))


@log.route('/register', methods=['GET', 'POST'])
def register():
    if request.method == 'POST': 
        user_first_name = request.form.get('user_first_name')
        user_last_name = request.form.get('user_last_name')
        birth_date = request.form.get('birth_date')
        myusername = request.form.get('myusername')
        password1 = request.form.get('password1')
        password2 = request.form.get('password2')
        user_role = request.form.get('user_role')
        school_id = request.form.get('school_id')
        

        #school??
        #SQL code -> name -> Birthdate = birth_year
        if(request.method == "POST"):
            user_first_name= request.form.get('user_first_name')
            user_last_name = request.form.get('user_last_name')
            birth_date = request.form.get('birth_date')
            myusername = request.form.get('myusername')
            password1 = request.form.get('password1')
            password2 = request.form.get('password2')

            #maybe add user role, school AND trigger in sql for user id, register date 
            cur = db.connection.cursor()

            form = RegisterCredentials()

            if len(myusername) < 4:
                flash('Username must be greater than 3 characters.')
            elif password1 != password2:
                flash('Passwords do not match.')
            elif len(password1) < 4:
                flash('Password must be longer than 3 characters.')
            #add user to database
            #login_user() #needs username inside and remember=True
            elif len(birth_date) != 4:
                flash('Invalid birth date')

            

            q = "INSERT INTO users(user_first_name, user_last_name, birth_year, myusername, mypassword) VALUES (%s, %s, %s, %s, %s);"
            values = user_first_name, user_last_name, birth_date, myusername, password2, birth_date, school_id
            cur.execute(q, (user_first_name, user_last_name, birth_date, myusername, password2, birth_date, school_id))
            db.connection.commit()
            cur.close()
            flash('Registration succesful! You can now log in.!')
            return redirect(url_for('log.login'))
    

    return render_template("register.html")
