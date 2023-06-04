from flask import Flask, render_template, request, flash, redirect, url_for, abort, session, Blueprint
from flask_mysqldb import MySQL
from AbsoluteMinds import db
from wtforms.validators import DataRequired, NumberRange, Email
from wtforms import StringField, SubmitField, SelectField, IntegerField

from AbsoluteMinds.forms import RegisterCredentials
from flask_wtf import FlaskForm

log = Blueprint('log', __name__)

@log.route('/login', methods=['GET', 'POST'])
def login():
    
    if request.method == 'POST':
        myusername = request.form.get('myusername')
        password = request.form.get('password')

        if not myusername or not password:
            flash('Invalid Form. Try again...')
            return redirect(url_for('log.login'))

        cur = db.connection.cursor()
        q = "SELECT myusername, mypassword, user_id, user_role, approved FROM users WHERE myusername = %s"
        cur.execute(q, (myusername,))
        
        login_result = cur.fetchall()

        if not login_result:
            flash('Invalid Username. Try Again...')
            return redirect(url_for('log.login'))
        else:
            user_id = None 
            for row in login_result:
                inputpassword = row[1]
                if inputpassword != password:
                    flash('Wrong Password. Try again...')
                    return redirect(url_for('log.login'))
                approved = row[4]
                if not approved:
                    flash('Your account has not been approved yet. Please wait for operator\'s approval...')
                    return redirect(url_for('log.login'))
                user_id = row[2]
                user_role = row[3]
        cur.close()
        
        flash('Logged in successfully')
        
        session['username'] = myusername
        session['user_id'] = user_id
        session['role'] = user_role
        
        if user_role == 'S' or user_role == 'T':
            return redirect(url_for('view.home'))
        elif user_role == 'O':
            return redirect(url_for('view.operator')) #panagiota
        else: 
            return redirect(url_for('view.manager')) #maria
    return render_template("login.html")


@log.route('/logout')
def logout():
    session.clear()
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

        cur = db.connection.cursor()

        if len(myusername) < 4:
            flash('Username must be greater than 3 characters.')
        elif password1 != password2:
            flash('Passwords do not match.')
        elif len(password1) < 4:
            flash('Password must be longer than 3 characters.')
        elif len(birth_date) != 4:
            flash('Invalid birth date')
        else:
            q = "INSERT INTO users (user_first_name, user_last_name, birth_year, myusername, mypassword, user_role, school_id) VALUES (%s, %s, %s, %s, %s, %s, %s)"

            cur.execute(q, (user_first_name, user_last_name, birth_date, myusername, password2, user_role, school_id))
            db.connection.commit()
            cur.close()
            flash('Registration successful! Stand by for operator\'s approval....')
            return redirect(url_for('log.login'))
    
    return render_template("register.html")