#3.1.1

#Total number of borrowed books per school in a given year
select count(book_copy_id) as total_borrows, school_name 
from borrows_per_school_ever inner join school_library using (school_id) 
where year (borrow_date) = '2021' group by (school_id);

#3.1.2

select category_id from category where category_name = 'Art'; 

# result: Art_id = 4007
create view books_per_art as
select * from book inner join book_category using(book_id) where category_id = 4011;

create view authors_per_art as
select author_id from books_per_art inner join book_author using (book_id);

#Authors of art books
select distinct concat(author_first_name, ' ', author_last_name) as art_authors 
from authors_per_art
inner join author 
using (author_id);

#Teachers who borrowed books about art this year
select concat(user_first_name, ' ', user_last_name) as teachers_borrowed_art
from borrowed_books_by_teachers
inner join books_per_art
using (book_id) where year(borrow_date) = '2023';

#3.1.3

#Teachers below 40 who have borrowed more books  
select concat(user_first_name, ' ', user_last_name) as young_teacher, count(book_id) as nmbr_of_borrowed_books,
(year(current_date) - birth_year) as age
from borrowed_books_by_teachers
where (year(current_date) - birth_year) < 40
group by (user_id)
order by nmbr_of_borrowed_books desc limit 10;

#3.1.4

#Authors with no borrowed books
select concat(author_first_name, ' ', author_last_name) as author 
from borrows_per_authors
right join author
using (author_id);