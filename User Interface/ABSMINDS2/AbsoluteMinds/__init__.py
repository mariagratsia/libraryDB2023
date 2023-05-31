from flask import Flask
#from flask_login import LoginManager
from flask_mysqldb import MySQL

app = Flask(__name__)

app.config["MYSQL_USER"] = 'root'
app.config["MYSQL_PASSWORD"] = 'root'
app.config["MYSQL_DB"] = 'absoluteminds'
app.config["MYSQL_HOST"] = 'localhost'
app.config["SECRET_KEY"] = 'cookiemonster'
app.config["WTF_CSRF_SECRET_KEY"] = ''

db = MySQL(app)

#login_manager = LoginManager()
#login_manager.login_view = 'log.login'
#login_manager.init_app(app)

#@login_manager.user_loader
#def load_user(user)
#   return user

from .log import log
from .view import view

app.register_blueprint(view, url_prefix='/')
app.register_blueprint(log, url_prefix='/')


