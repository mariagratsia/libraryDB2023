from flask_wtf import Flaskform
from wtforms import StringField, SubmitField, SelectField, IntegerField
from wtforms.validators import DataRequired, Email, NumberRange

class loginForm(Flaskform):
    myusername = StringField(label = "Userame")
    password = StringField(label = "Password")

class registerForm(Flaskform):
    user_first_name = StringField(label = "Last Name")
    user_last_name = StringField(label = "First Name" )
    birth_date = StringField(label = "Date of birth")
    myusername = StringField(label = "Userame")
    password1 = StringField(label = "Password")
    password2 = StringField(label = "Password")