from flask import Flask, render_template, request, flash, redirect, url_for, abort, session, Blueprint
from AbsoluteMinds import db
#from flask_mysqldb import MySQL
#from flask_login import login_required, current_user

view = Blueprint('view', __name__)

@view.route('/', methods=['GET', 'POST'])
#@login_required
def home():
    cur = db.connection.cursor()
    
    q = 'select title from (book inner join (book_copy inner join users using (school_id)) using (book_id)) where user_id = %s'
    current_user_id = session['user_id']
    cur.execute(q, (current_user_id,))
    book_list = cur.fetchall()
    book_titles = [book[0] for book in book_list]
    cur.close()
    return render_template("home.html", book_list = book_titles)
