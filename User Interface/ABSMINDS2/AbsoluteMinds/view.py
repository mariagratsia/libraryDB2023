from flask import Flask, render_template, request, flash, redirect, url_for, abort, session, Blueprint
from AbsoluteMinds import db
#from flask_mysqldb import MySQL
#from flask_login import login_required, current_user

view = Blueprint('view', __name__)

@view.route('/')
#@login_required
def home():

    return render_template("home.html")