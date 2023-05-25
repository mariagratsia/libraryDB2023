#3.1.1

#Total number of borrowed books per school in a given year
select count(book_copy_id) as total_borrows, school_name 
from ((users 
inner join school_library using (school_id) )
inner join borrows_history using (user_id) )
where year (borrow_date) = '2023' group by (school_id);

#3.1.2

#Authors of given category books
select distinct concat(author_first_name, ' ', author_last_name) as authors, category_name
from ((book_category
inner join (book_author
inner join author using(author_id))
 using (book_id))
inner join category using (category_id))
where category_name = 'Art';

#Teachers who borrowed books from given category
select concat(user_first_name, ' ', user_last_name) as teachers
from (( book_copy
inner join 
(book_category inner join category using (category_id)) 
using (book_id) )
inner join 
(borrows_history inner join users using (user_id)) 
using (book_copy_id) )
where category_name = 'Art' and (borrow_date > date_sub(current_date, interval 1 year)) and user_role = 'T';

#3.1.3

#Teachers below 40 who have borrowed more books  
select concat(user_first_name, ' ', user_last_name) as young_teacher, count(book_copy_id) as nmbr_of_borrowed_books,
(year(current_date) - birth_year) as age
from ( borrows_history
inner join users using (user_id) )  
where (year(current_date) - birth_year) < 40 and user_role = 'T'
group by (user_id)
order by nmbr_of_borrowed_books desc limit 10;

#3.1.4

#Authors with no borrowed books
select distinct concat(author_first_name, ' ', author_last_name) as author 
from books_per_author
where not exists (
select * from borrows_history
where borrows_history.book_copy_id = books_per_author.book_copy_id);

#3.1.5

#Select operators with same number of borrows > 20
select concat(a.operator_first_name, ' ', a.operator_last_name) as operator, a.borrowed_books
from operators_and_borrowed_books a, operators_and_borrowed_books b
where a.user_id <> b.user_id and a.borrowed_books > 20 and a.borrowed_books = b.borrowed_books; 

#3.1.6

#Books and the number of categories they belong
create view books_in_more_than_one_categories as
select book_id, count(book_id) as category_nmbr
from book_category
group by book_id
having count(book_id) > 1;
select * from books_in_more_than_one_categories;

create view pairs_of_categories as
select a.category_id as first_part, b.category_id as second_part from category a cross join category b
where a.category_id < b.category_id order by a.category_id, b.category_id;

select * from pairs_of_categories;
drop view pairs_of_categories;

select book_copy_id, book_id from (borrows_history inner join book_copy using (book_copy_id)) 
inner join books_in_more_than_one_categories using (book_id) order by book_id; 

#3.1.7

select concat(author_first_name, ' ', author_last_name) as authors, count(book_id) as books
from (book_author inner join author using (author_id))
group by author_id
having 
count(book_id) < (select max(books) - 5 from (select count(book_id) as books from book_author group by author_id) as max)
order by count(book_id) desc;

#3.2.1

#Present books (of a given school) by title and availability
select title, book_avail_copies 
from (book 
inner join (book_copy 
inner join school_library using (school_id)) 
using (book_id))
where school_name = 'Oakwood Academy' 
order by title;

#3.2.2


#3.2.3

#avg likert per username
select myusername, avg(likert) as avg_likert_u
from review inner join users using(user_id)
group by user_id;

#avg likert per category
select category_name, avg(avg_likert) as avg_likert_c
from ((book_category 
inner join category using(category_id) )
inner join book using(book_id) )
group by category_id;

#3.3.1

#3.3.2

select title, borrow_date 
from ((borrows_history 
inner join book_copy using (book_copy_id)) 
inner join book using (book_id)) where user_id = '5000';
select user_first_name, user_last_name, days_of_delay 
from late_returns inner join users using(user_id)
order by days_of_delay desc;