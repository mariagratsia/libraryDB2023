#3.1.1

select count(book_copy_id) as total_borrows, school_name 
from borrows_per_school_ever inner join school_library using (school_id) 
where year (borrow_date) = '2021' group by (school_id);

#3.1.2

select category_id from category where category_name = 'Art'; 

# result: Art_id = 4011
create view books_per_art as
select * from book inner join book_category using(book_id) where category_id = 4011;

create view authors_per_art as
select author_id from books_per_art inner join books_per_author using (book_id);

select distinct concat(author_first_name, ' ', author_last_name) as art_authors 
from authors_per_art
inner join author 
using (author_id);

drop view books_per_art;
drop view authors_per_art;

