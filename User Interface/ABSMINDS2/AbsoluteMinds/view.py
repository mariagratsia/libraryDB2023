from flask import Flask, render_template, request, flash, redirect, url_for, abort, session, Blueprint
from AbsoluteMinds import db

view = Blueprint('view', __name__)

@view.route('/', methods=['GET', 'POST'])
def home():
    if 'user_id' not in session or 'username' not in session:
        flash('You are not logged in.')
        return redirect(url_for('log.login'))
    
    cur = db.connection.cursor()
    q = 'select book_id, title from (book inner join (book_copy inner join users using (school_id)) using (book_id)) where user_id = %s'
    current_user_id = session['user_id']
    current_username = session['username']
    cur.execute(q, (current_user_id,))
    book_list = cur.fetchall()
    books = [{'id': book[0], 'title': book[1]} for book in book_list]
    cur.close()
    return render_template("home.html", myusername = current_username, book_list = books)

@view.route('/book_details/<int:book_id>')
def book_details(book_id):
    session['book_id'] = book_id
    cur = db.connection.cursor()

    q = 'SELECT * FROM book WHERE book_id = %s'
    cur.execute(q, (book_id,))
    book_data = cur.fetchone()

    if not book_data:
        flash('Book not found.')
        return redirect(url_for('view.home'))
    
    q1 = 'SELECT category_name FROM book_category_name WHERE book_id = %s'
    cur.execute(q1, (book_id,))
    book_category_data = cur.fetchall()

    
    q2 = 'SELECT CONCAT(author_first_name, " ", author_last_name) AS author_name FROM book_author INNER JOIN author ON book_author.author_id = author.author_id WHERE book_author.book_id = %s'
    cur.execute(q2, (book_id,))
    book_author_data = cur.fetchall()

    cur.close()

    return render_template('book.html', book=book_data, book_category=book_category_data, book_author=book_author_data)

@view.route('/book_details/<int:book_id>/borrow_book', methods=['GET', 'POST'])
def borrow_book(book_id):
    current_user_id = session['user_id']
    current_user_role = session['role']
    current_book_id = session['book_id']

    if current_user_role == 'O':
        flash('Operators cannot borrow books.')
        return redirect(url_for('view.home'))
    
    cur = db.connection.cursor()
    q = 'SELECT COUNT(book_copy_id) FROM borrow WHERE user_id = %s and approved = 1 GROUP BY (user_id)'
    cur.execute(q, (current_user_id,))
    
    result = cur.fetchone()
    nmbr_borrowed_books = 0 
    
    if result is not None:
        nmbr_borrowed_books = int(result[0])

    if nmbr_borrowed_books >= 2 and current_user_role == 'S':
        flash('You have reached your limit of borrowed books! You need to return first!')
        return redirect(url_for('view.home'))
    
    elif nmbr_borrowed_books >= 1 and current_user_role == 'T':
        flash('You have reached your limit of borrowed books! You need to return first!')
        return redirect(url_for('view.home'))

    q0 = 'SELECT school_id FROM users WHERE user_id = %s'
    cur.execute(q0, (current_user_id,))
    school_id = cur.fetchone()
    q1 = 'SELECT book_copy_id, book_avail_copies FROM book_copy WHERE book_id = %s AND school_id = %s'
    cur.execute(q1, (current_book_id, school_id,))
    book_copy_data = cur.fetchone()
    book_copy_id = book_copy_data[0]
    book_avail_copies = book_copy_data[1]

    if request.method == 'POST':
        if 'show_noreserve' in request.form:
            return redirect(url_for('view.home'))
        
        elif 'show_makereserve' in request.form:
            q6 = 'SELECT COUNT(book_copy_id) FROM library_log WHERE user_id = %s and book_status = %s GROUP BY (user_id)'
            cur.execute(q6, (current_user_id, 'Reserved'))
            result6 = cur.fetchone()
            nmbr_reserved_books = 0 
    
            if result6 is not None:
                nmbr_reserved_books = int(result6[0])

            if nmbr_reserved_books >= 2 and current_user_role == 'S':
                flash('You have reached your limit of reserved books!')
                return redirect(url_for('view.home'))
    
            elif nmbr_reserved_books >= 1 and current_user_role == 'T':
                flash('You have reached your limit of reserved books!')
                return redirect(url_for('view.home'))


            q4 = 'INSERT INTO reserve (user_id, book_copy_id) VALUES (%s, %s)'
            cur.execute(q4, (current_user_id, book_copy_id,))
            db.connection.commit()
            cur.close()
            flash('Reservation successful, wait for notification when your book becomes available!')
            return redirect(url_for('view.home'))
    
    if book_avail_copies <= 0:
        reserve = True
        return render_template('borrow.html', reserve = reserve, book_id = current_book_id)
    
    reserve = False
    q2 = 'INSERT INTO borrow (user_id, book_copy_id) VALUES (%s, %s)'
    cur.execute(q2, (current_user_id, book_copy_id,))

    
    db.connection.commit()
    cur.close()
    return render_template('borrow.html', reserve = reserve)

@view.route('/book_details/<int:book_id>/review_book', methods=['GET', 'POST'])
def review_book(book_id):
    current_user_id = session['user_id']
    current_book_id = session['book_id']
    current_user_role = session['role']

    if current_user_role == 'O':
        flash('Operators cannot review books.')
        return redirect(url_for('view.home'))

    if request.method == 'POST': 
        book_review = request.form.get('book_review')
        likert = request.form.get('likert')

    if book_review and likert:
        cur = db.connection.cursor()
        q = "INSERT INTO review (user_id, book_id, book_review, likert) VALUES (%s, %s, %s, %s)"
        cur.execute(q, (current_user_id, current_book_id, book_review, likert))
        db.connection.commit()
        cur.close()
        flash('Review added, waiting for approval...')
    return render_template('review.html')

@view.route('/profile')
def profile():
    user_id = session['user_id']
    user_role = session['role']
    cur = db.connection.cursor()
    q = 'SELECT user_first_name, user_last_name, myusername, birth_year, school_name, user_role, register_date FROM (users INNER JOIN school_library using (school_id)) WHERE user_id = %s'  # Updated query
    cur.execute(q, (user_id,))
    user_data = cur.fetchone()
    q1 = 'Select title, reserve_date from reserve inner join (book_copy inner join book using (book_id)) using (book_copy_id) where user_id = %s'
    cur.execute(q1, (user_id,))
    reserve_data = cur.fetchall()
    q2 = 'Select title, borrow_date, due_date from borrow inner join (book_copy inner join book using (book_id)) using (book_copy_id) where user_id = %s and approved = 1'
    cur.execute(q2, (user_id,))
    active_borrow_data = cur.fetchall()
    q3 = 'Select title, borrow_date from library_log inner join (book_copy inner join book using (book_id)) using (book_copy_id) where user_id = %s and book_status = %s'
    cur.execute(q3, (user_id, 'Returned'))
    borrowed_and_returned_data = cur.fetchall()
    q4 = 'Select title, borrow_date from borrow inner join (book_copy inner join book using (book_id)) using (book_copy_id) where user_id = %s and approved = 0'
    cur.execute(q4, (user_id,))
    borrow_requests_data = cur.fetchall()
    cur.close()
    return render_template('user.html', user_role = user_role, user=user_data, reserve_data = reserve_data, active_borrow_data = active_borrow_data, borrowed_and_returned_data = borrowed_and_returned_data, borrow_requests_data = borrow_requests_data)

@view.route('/manager')
def manager():
    username = session.get('username')
    user_role = session.get('role')
    cur = db.connection.cursor()
    q = 'SELECT school_name, school_id FROM school_library'
    cur.execute(q)
    school_list = cur.fetchall()
    schools = [{'id': school[1], 'name': school[0]} for school in school_list]
    cur.close()
    return render_template('home.html', myusername = username, user_role = user_role, schools = schools)

@view.route('/school_details/<int:school_id>')
def school_details(school_id):
    cur = db.connection.cursor()
    q = 'SELECT * FROM school_library WHERE school_id = %s' 
    cur.execute(q, (school_id,))
    school_data = cur.fetchone()
    cur.close()
    return render_template('school.html', school=school_data)   


@view.route('/manager/manager_options', methods=['GET', 'POST'])
def manager_options():
    cur = db.connection.cursor()

    if request.method == 'POST':
        year = request.form.get('year')
        month = request.form.get('month')
        category = request.form.get('category')
        session['year'] = year
        session['month'] = month
        session['category'] = category


    elif request.method == 'GET':
        year = session.get('year')
        month = session.get('month')
        category = session.get('category')

    if year:
        if month:
            q1 = 'select count(book_copy_id) as total_borrows, school_name from ((users inner join school_library using (school_id) ) inner join borrows_history using (user_id) ) where year (borrow_date) = %s and month(borrow_date) = %s group by (school_id)'
            cur.execute(q1, (year, month, ))
        else:  
            q1 = 'select count(book_copy_id) as total_borrows, school_name from ((users inner join school_library using (school_id) ) inner join borrows_history using (user_id) ) where year (borrow_date) = %s group by (school_id)'
            cur.execute(q1, (year,))

        result_set_1 = cur.fetchall()
        cur.close()
        return render_template('manager_options.html', data = result_set_1, year = year, month = month)
    
    elif category:
        q2 = 'select distinct author_first_name, author_last_name from ((book_category inner join (book_author inner join author using(author_id)) using (book_id)) inner join category using (category_id)) where category_name = %s'
        cur.execute(q2, (category,))
        result_set_2 = cur.fetchall()

        q3 = 'select user_first_name, user_last_name from (( book_copy inner join (book_category inner join category using (category_id)) using (book_id) ) inner join (borrows_history inner join users using (user_id)) using (book_copy_id) ) where category_name = %s and user_role = %s and (borrow_date > date_sub(current_date, interval 1 year))'
        cur.execute(q3, (category, 'T'))
        result_set_3 = cur.fetchall()
        cur.close()
        return render_template('manager_options.html', author_list = result_set_2, teacher_list = result_set_3, category = category)    

    if request.method == 'POST':
       
        if 'show_total_borrows_per_school' in request.form:
            q = '''select count(book_copy_id) as total_borrows, school_name 
                   from ((users 
                   inner join school_library using (school_id) )
                   inner join borrows_history using (user_id) )
                   group by (school_id)'''
            cur.execute(q)
            result_set = cur.fetchall()
            cur.close()
            return render_template('manager_options.html', alldata = result_set)
        
        if 'show_young_teachers' in request.form:
            q4 = 'select user_first_name, user_last_name, count(book_copy_id) as nmbr_of_borrowed_books, (year(current_date) - birth_year) as age from ( borrows_history inner join users using (user_id) ) where (year(current_date) - birth_year) < 40 and user_role = %s group by (user_id) order by nmbr_of_borrowed_books desc limit 10;'
            cur.execute(q4, ('T'))
            result_set_4 = cur.fetchall()
            cur.close()
            return render_template('manager_options.html', young_teachers=result_set_4)
        
        if 'show_auth_with_no_bor' in request.form:
            q5 = 'select distinct author_first_name, author_last_name from ((book_author inner join author using (author_id)) inner join book_copy using(book_id)) where not exists ( select * from borrows_history where borrows_history.book_copy_id = book_copy.book_copy_id)'
            cur.execute(q5)
            result_set_5 = cur.fetchall()
            cur.close()
            return render_template('manager_options.html', auth_with_no_bor=result_set_5)
        
        if 'show_operators' in request.form:
            q6 = 'select distinct a.operator_first_name, a.operator_last_name, a.borrowed_books from operators_and_borrowed_books a, operators_and_borrowed_books b where a.user_id <> b.user_id and a.borrowed_books > 20 and a.borrowed_books = b.borrowed_books'
            cur.execute(q6)
            result_set_6 = cur.fetchall()
            cur.close()
            return render_template('manager_options.html', operators=result_set_6)
        
        if 'show_pairs' in request.form:
            q7 = '''select distinct a.category_name as cat1, b.category_name as cat2, count(a.category_id) as books from 
                    (((book inner join book_copy using(book_id)) 
                    inner join borrows_history using(book_copy_id)) 
                    inner join (book_category_name a) using(book_id))
                    inner join (book_category_name b) using (book_id)
                    where a.category_id < b.category_id
                    group by a.category_id, b.category_id
                    order by books desc limit 3'''
            cur.execute(q7)
            result_set_7 = cur.fetchall()
            cur.close()
            return render_template('manager_options.html', pairs=result_set_7)
        
        if 'show_all_authors' in request.form:
            q8 = '''select author_first_name, author_last_name, count(book_id) as books
                    from (book_author inner join author using (author_id))
                    group by author_id
                    having 
                    count(book_id) <= (select max(books) - 5 from (select count(book_id) as books from book_author group by author_id) as max)
                    order by count(book_id) desc'''
            cur.execute(q8)
            result_set_8 = cur.fetchall()
            cur.close()
            return render_template('manager_options.html', all_authors=result_set_8)
        
    cur.close()
    return render_template('manager_options.html')

@view.route('/operator')
def operator():
    username = session.get('username')
    user_role = session.get('role')
    user_id = session.get('user_id')
    cur = db.connection.cursor()
    q = 'select book_id, title from (book inner join (book_copy inner join users using (school_id)) using (book_id)) where user_id = %s'
    cur.execute(q, (user_id,))
    book_list = cur.fetchall()
    books = [{'id': book[0], 'title': book[1]} for book in book_list]
    cur.close()
    return render_template("home.html", myusername = username, book_list = books, user_role = user_role)

@view.route('/operator/late_returns', methods=['GET', 'POST'])
def late_returns():
    cur = db.connection.cursor()

    if request.method == 'POST':
        user_first_name = request.form.get('user_first_name')
        user_last_name = request.form.get('user_last_name')
        days_of_delay = request.form.get('days_of_delay')
        session['user_first_name'] = user_first_name
        session['user_last_name'] = user_last_name
        session['days_of_delay'] = days_of_delay


    elif request.method == 'GET':
        user_first_name = session.get('user_first_name')
        user_last_name = session.get('user_last_name')
        days_of_delay = session.get('days_of_delay')

    result_set = []
    if user_first_name and user_last_name:
        q = '''select days_of_delay 
                from late_returns inner join users using(user_id)
                where user_first_name = %s and  user_last_name = %s
                order by days_of_delay desc'''
        cur.execute(q, (user_first_name, user_last_name))
        result_set = cur.fetchone()
        cur.close()
        return render_template('late_returns.html', days_nmbr = result_set, user_first_name = user_first_name, user_last_name = user_last_name)

    elif days_of_delay:
        q = '''select user_first_name, user_last_name 
                from late_returns inner join users using(user_id)
                where days_of_delay = %s
                order by days_of_delay desc'''
        cur.execute(q, (days_of_delay, ))
        result_set = cur.fetchall()
        cur.close()
        return render_template('late_returns.html', user_list = result_set, days_of_delay = days_of_delay)
    else:
        q = '''select user_first_name, user_last_name, days_of_delay 
               from late_returns inner join users using(user_id)
               order by days_of_delay desc'''
        cur.execute(q)
        result_set = cur.fetchall()

        cur.close()
        return render_template('late_returns.html', all = result_set)


@view.route('/operator/avg_reviews', methods=['GET', 'POST'])
def avg_reviews():
    cur = db.connection.cursor()

    if request.method == 'POST':
        myusername = request.form.get('myusername')
        category_name = request.form.get('category_name')
        session['myusername'] = myusername
        session['category_name'] = category_name

    elif request.method == 'GET':
        myusername = session.get('myusername')
        category_name = session.get('category_name')

    result_set = []
    if myusername:
        q = '''select avg(likert) as avg_likert_u
               from review inner join users using(user_id)
               where myusername = %s
               group by user_id;'''
        cur.execute(q, (myusername, ))
        result_set = cur.fetchone()
        cur.close
        return render_template('avg_reviews.html', username_list = result_set, myusername = myusername)
    
    elif category_name:
        q = '''select avg(avg_likert) as avg_likert_c
               from ((book_category 
               inner join category using(category_id) )
               inner join book using(book_id) )
               where category_name = %s
               group by category_id;'''
        cur.execute(q, (category_name, ))
        result_set = cur.fetchone()
        cur.close
        return render_template('avg_reviews.html', category_list = result_set, category_name = category_name)
    result_set1 = []
    result_set2 = []
    if 'show_all_user_reviews' in request.form:
        q1 = '''select myusername, avg(likert) as avg_likert_u
                from review inner join users using(user_id)
                group by user_id'''
        cur.execute(q1)
        result_set1 = cur.fetchall()

    if 'show_all_cat_reviews' in request.form:
        q2 = '''select category_name, avg(avg_likert) as avg_likert_c
                from ((book_category 
                inner join category using(category_id) )
                inner join book using(book_id) )
                group by category_id'''
        cur.execute(q2)
        result_set2 = cur.fetchall()
    cur.close
    return render_template('avg_reviews.html', all2 = result_set2, all1 = result_set1)

@view.route('/operator/approve', methods=['GET', 'POST'])
def approve():
    cur = db.connection.cursor()

    cur.execute("SELECT * FROM review WHERE approved = False")
    not_approved_reviews = cur.fetchall()
    review_id = not_approved_reviews[0] if not_approved_reviews else None

    cur.execute("SELECT * FROM borrow WHERE approved = False")
    not_approved_borrows = cur.fetchall()
    borrow_id = not_approved_borrows[0] if not_approved_borrows else None

    cur.execute("SELECT * FROM users WHERE approved = False")
    not_approved_users = cur.fetchall()
    user_id = not_approved_users[0] if not_approved_users else None

    
    if request.method == 'POST':
        if 'review_id' in request.form and review_id is None:
            review_id = request.form['review_id']
            print(review_id)
            q = 'UPDATE review SET approved = True WHERE review_id = %s'
            cur.execute(q, (review_id,))
            db.connection.commit()
            cur.close()
            flash('Review approved successfully.')
            return redirect(url_for('view.approve'))
        
        if 'borrow_id' in request.form and borrow_id is not None:
            borrow_id = request.form['borrow_id']
            print(borrow_id)
            q = 'UPDATE borrow SET approved = 1, borrow_date = current_date and due_date = date_add(borrow_date, interval 7 DAY) WHERE borrow_id = %s'
            cur.execute(q, (borrow_id,))
            db.connection.commit()
            cur.close()
            flash('Borrow approved successfully.')
            return redirect(url_for('view.approve'))
        
        if 'user_id' in request.form and user_id is not None: 
            user_id = request.form['user_id']
            print(user_id)
            q = 'UPDATE users SET approved = 1 WHERE user_id = %s'
            cur.execute(q, (user_id,))
            db.connection.commit()
            cur.close()
            flash('User approved.')
            return redirect(url_for('view.approve'))
        

    cur.close()

    return render_template('approve.html', not_approved_reviews=not_approved_reviews, not_approved_borrows=not_approved_borrows, not_approved_users=not_approved_users)


@view.route('/operator/return_a_book', methods=['GET', 'POST'])
def return_a_book():
    cur = db.connection.cursor()

    if request.method == 'POST':
        username = request.form.get('username')
        ISBN = request.form.get('ISBN')

        session['username'] = username
        session['ISBN'] = ISBN

        if not username or not ISBN:
            return redirect(url_for('view.return_a_book'))


    elif request.method == 'GET':
        username = session.get('username')
        ISBN = session.get('ISBN')

    if not username or not ISBN:
        flash('Incomplete form... Try again.')
    else:
        current_username = session['username']
        current_ISBN = session['ISBN']

        q1 = 'select user_id, school_id from users where myusername = %s'
        cur.execute(q1, (current_username,))
        result_set1 = cur.fetchone() 
        current_user_id = result_set1[0] if result_set1 else None
        current_school_id = result_set1[1] if result_set1 else None

        q2 = 'select book_id from book where ISBN = %s'
        cur.execute(q2, (current_ISBN,))
        result_set2 = cur.fetchone()
        current_book_id = result_set2[0] if result_set2 else None

        q3 = 'select book_copy_id from book_copy where book_id = %s and school_id = %s'
        cur.execute(q3, (current_book_id, current_school_id,))
        result_set3 = cur.fetchone()
        current_book_copy_id = result_set3[0] if result_set3 else None
    
    if request.method == 'POST':
        q4 = 'delete from borrow where user_id = %s and book_copy_id = %s'
        cur.execute(q4, (current_user_id, current_book_copy_id,))
        affected_rows = cur.rowcount
        db.connection.commit()
        cur.close()
        if affected_rows > 0:
            flash('Return registered successfully!')
        else: 
            flash('No matches... Try again.')
    cur.close()
    return render_template('return_a_book.html')
