#drop database AbsoluteMinds; 

CREATE DATABASE IF NOT EXISTS AbsoluteMinds;
USE Absoluteminds;

#School Library Table
create table if not exists school_library (
school_id int unsigned not null auto_increment,
school_name varchar(50) not null unique,
school_address varchar(50) not null unique,
city varchar(50) not null,
email varchar(50) not null unique,
phone_nmbr varchar(15) not null unique,
director_first_name varchar(25) not null,
director_last_name varchar(25) not null,
operator_first_name varchar(25) not null,
operator_last_name varchar(25) not null,
primary key (school_id)
);

#Book Table
create table if not exists book (
book_id int unsigned not null auto_increment, 
ISBN varchar(30) not null unique,
title varchar(150) not null,
publisher varchar(50) not null,
summary text not null,
key_words text not null,
page_count int not null,
picture varchar(255),
languag varchar(50) not null default 'English',
avg_likert int default null check (avg_likert between 1 and 5),
primary key (book_id)
);

#Category Table
create table if not exists category (
category_id int unsigned not null auto_increment,
category_name varchar(50) not null unique,
primary key (category_id)
);

#Author Table
create table if not exists author (
author_id int unsigned not null auto_increment, 
author_first_name varchar(25) not null,
author_last_name varchar(25) not null,
primary key (author_id)
);

#Book_category Table 
create table if not exists book_category (
book_id int unsigned not null,
category_id int unsigned not null,
primary key (book_id, category_id),
constraint fk_book_category_book
	foreign key (book_id) 
    references book (book_id)
    on update cascade
    on delete cascade,
constraint fk_book_category_category 
	foreign key (category_id) 
    references category (category_id)
	on update cascade
	on delete cascade
);

#Book_author Table
create table if not exists book_author (
book_id int unsigned not null,
author_id int unsigned not null,
primary key (book_id, author_id),
constraint fk_book_author_book
	foreign key (book_id) 
    references book (book_id)
	on update cascade
    on delete cascade,
constraint fk_book_author_author 
	foreign key (author_id) 
    references author (author_id)
    on delete cascade
	on update cascade
);

#Book_copy Table
create table if not exists book_copy (
book_id int unsigned not null,
school_id int unsigned not null,
book_avail_copies int unsigned, 
book_copy_id int unsigned not null auto_increment,
primary key (book_copy_id),
constraint fk_book_copy_book
	foreign key (book_id) 
    references book (book_id)
    on delete cascade
	on update cascade,
constraint fk_book_copy_school_library
	foreign key (school_id) 
    references school_library (school_id)
    on delete cascade
    on update cascade
);


#User Table
# S = Student, T = Teacher, O = Library Operator, M = System Manager
create table if not exists users (
user_id int unsigned not null auto_increment,
user_first_name varchar(25) not null,
user_last_name varchar(25) not null,
school_id int unsigned,
birth_year year,
myusername varchar(50) not null unique,
mypassword varchar(20) not null constraint length check (char_length(mypassword) between 3 and 15),
user_role enum ('S', 'T', 'O', 'M'), 
approved bool default FALSE, 
register_date date default (current_date),
primary key (user_id),
constraint fk_users_school_library
	foreign key (school_id)
	references school_library (school_id)
    on delete cascade
    on update cascade
); 

#Borrow Table
create table if not exists borrow (
borrow_id int unsigned not null auto_increment,
user_id int unsigned,
book_copy_id int unsigned,
borrow_date date default (current_date),
due_date date default (date_add(borrow_date, interval 7 DAY)),
approved bool default false,
primary key (borrow_id),
constraint fk_borrow_users
	foreign key (user_id) 
    references users (user_id)
    on delete cascade
    on update cascade,
constraint fk_borrow_book_copy
	foreign key (book_copy_id)
    references book_copy (book_copy_id)
    on delete cascade
    on update cascade
);

#Reserve Table
create table if not exists reserve (
reserve_id int unsigned not null auto_increment,
user_id int unsigned,
book_copy_id int unsigned,
reserve_date date default (current_date),
primary key (reserve_id),
constraint fk_reserve_users
	foreign key (user_id) 
    references users (user_id)
    on delete cascade
    on update cascade,
constraint fk_reserve_book_copy
	foreign key (book_copy_id)
    references book_copy (book_copy_id)
    on delete cascade
    on update cascade
);

#Event to delete reserves after 7 days of their creation
set global event_scheduler = on;
create event if not exists delete_reserve_after_7_days
on schedule every 1 day
starts (select date(current_timestamp())) + interval 1 day
do
delete from reserve where reserve_date < date_sub(curdate(), interval 7 day);

#library_log Table
create table if not exists library_log (
log_id int unsigned not null auto_increment,
user_id int unsigned not null,
book_copy_id int unsigned not null,
book_status enum ('Borrowed', 'Returned', 'Reserved'),
borrow_date date default (current_date),
primary key (log_id),
constraint fk_log_users
	foreign key (user_id) 
    references users (user_id)
    on delete cascade
    on update cascade,
constraint fk_log_book_copy
	foreign key (book_copy_id)
    references book_copy (book_copy_id)
    on delete cascade
    on update cascade
);

#Triggers for update library_log and book availability
delimiter $$
create trigger after_borrow
after insert on borrow
for each row
begin
declare new_number int unsigned;
set new_number = (select book_avail_copies from book_copy where book_copy_id = new.book_copy_id) - 1;
insert into library_log(user_id, book_copy_id, book_status, borrow_date)
values (new.user_id, new.book_copy_id, 'Borrowed', new.borrow_date);
update book_copy
set book_avail_copies = new_number
where book_copy_id = new.book_copy_id;
end$$

create trigger new_log_after_reserve
after insert on reserve
for each row
begin
insert into library_log(user_id, book_copy_id, book_status)
values (new.user_id, new.book_copy_id, 'Reserved');
end$$

create trigger after_return
before delete on borrow
for each row
begin
declare new_number int unsigned;
set new_number = (select book_avail_copies from book_copy where book_copy_id = old.book_copy_id) + 1;
update library_log
set book_status = 'Returned'
where old.book_copy_id = book_copy_id;
update book_copy
set book_avail_copies = new_number
where old.book_copy_id = book_copy_id;
end$$

create trigger delete_from_log_after_cancel_reserve
before delete on reserve
for each row
begin
delete from library_log
where (old.book_copy_id = (select book_copy_id from library_log));
end$$

delimiter ;

#Review Table
create table if not exists review (
review_id int unsigned not null auto_increment,
book_id int unsigned not null,
user_id int unsigned not null,
book_review text default null,
likert int default null check (likert between 1 and 5),
approved bool default false,
primary key (review_id),
constraint fk_review_users
	foreign key (user_id) 
    references users (user_id)
    on delete cascade,
constraint fk_review_book
	foreign key (book_id)
    references book (book_id)
    on delete cascade
);

#Trigger to update book average likert after a review
delimiter $$
create trigger update_likert_after_new_review
after insert on review
for each row
begin
update book
set avg_likert = (select avg(likert) from review where book_id = new.book_id)
where book_id = new.book_id;
end $$

delimiter ;

#Special ID number for each data
alter table school_library auto_increment = 1000;
alter table book auto_increment = 2000;
alter table author auto_increment = 3000;
alter table category auto_increment = 4000;
alter table users auto_increment = 5000;
alter table book_copy auto_increment = 6000;

#INDEXES

create index idx_due_date on borrow (due_date);
create index idx_school_name on school_library (school_name);

#VIEWS

#Late_returns
create view late_returns as 
select user_id, book_copy_id, due_date, datediff(current_date, due_date) as days_of_delay
from borrow
where datediff(current_date, due_date) > 0;

#Total borrows ever
create view borrows_history as
select book_copy_id, user_id, borrow_date
from library_log
where book_status = 'Returned' or book_status = 'Borrowed';

#for 3.1.5 Operators and borrowed books 
create view operators_and_borrowed_books as
select any_value(operator_first_name) as operator_first_name, any_value(operator_last_name) as operator_last_name,  count(book_copy_id) as borrowed_books, any_value(user_id) as user_id
from (( users
inner join school_library using (school_id))
inner join borrows_history using (user_id) )
where date_sub(borrow_date, interval 1 year)
GROUP BY (school_id);

# For 3.1.6 
create view book_category_name as
select book_id, category_id, category_name from
book_category inner join category using(category_id);
