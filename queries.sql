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
where category_name = 'Art' and (borrow_date > current_date - 365) and user_role = 'T';

#3.1.3

#Teachers below 40 who have borrowed more books  
select concat(user_first_name, ' ', user_last_name) as young_teacher, count(book_id) as nmbr_of_borrowed_books,
(year(current_date) - birth_year) as age
from (( borrows_history
inner join book_copy using (book_copy_id) ) #same books don't count?
inner join users using (user_id) )  
where (year(current_date) - birth_year) < 40 and user_role = 'T'
group by (user_id)
order by nmbr_of_borrowed_books desc limit 10;

#3.1.4

#Authors with no borrowed books
select distinct concat(author_first_name, ' ', author_last_name) as author 
from author
where not exists (
select * from borrows_per_authors 
where borrows_per_authors.author_id = author.author_id);

#3.1.5

# Operatos who did the same number of borrows during 2023 and they are over 20 books
select distinct e.operator, e.total_borrows 
from operators_per_books e 
inner join operators_per_books m 
on e.total_borrows = m.total_borrows 
and e.operator <> m.operator 
and e.total_borrows > 1; 

#3.1.6

#Books and the number of categories they belong
select book_id, count(book_id) as category_nmbr
from book_category
group by book_id
having count(book_id) > 1;

#3.1.7

#3.2.1

create view books_nmbr_authors as
select book_id, count(book_id) as author_nmbr
from book_author
group by book_id;

select * from books_nmbr_authors;

#3.2.2

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