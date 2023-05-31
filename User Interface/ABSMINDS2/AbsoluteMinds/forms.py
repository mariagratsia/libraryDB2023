from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField, SelectField, IntegerField
from wtforms.validators import DataRequired, Email, NumberRange

class loginForm(FlaskForm):
    myusername = StringField(label = "Userame")
    password = StringField(label = "Password")

class registerForm(FlaskForm):
    user_first_name = StringField(label = "Last Name")
    user_last_name = StringField(label = "First Name" )
    birth_date = StringField(label = "Date of birth")
    myusername = StringField(label = "Userame")
    password1 = StringField(label = "Password")
    password2 = StringField(label = "Password")



class RegisterCredentials(FlaskForm):
    user_first_name = StringField(
    label = "First_Name",
    validators= [DataRequired(message = "First name is a required field.")]    
    )
    
    user_last_name = StringField(
        label = "Last_Name",
        validators= [DataRequired(message = "Last name is a required field.")]
        )
    
    birth_date = IntegerField(
        label = "Birthdate",
        validators= [DataRequired(message = "Invalid birth date.")]
    )