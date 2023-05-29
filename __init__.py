from flask import Flask
from flask_mysqldb import MySQL

app = Flask(__name__)

app.config["MYSQL_USER"] = 'root'
app.config["MYSQL_PASSWORD"] = ''
app.config["MYSQL_DB"] = 'flask'
app.config["MYSQL_HOST"] = 'localhost'
app.config["SECRET_KEY"] = '' 
app.config["WTF_CSRF_SECRET_KEY"] = ''

db = MySQL(app)

from AbsoluteMinds import routes
