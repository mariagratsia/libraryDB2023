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
ISBN int not null unique,
title varchar(150) not null,
publisher varchar(50) not null,
summary text not null,
key_words text not null,
page_count int not null,
picture varchar(255),
languag varchar(50) not null default 'English',
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
    on delete cascade
    on update cascade,
constraint fk_book_category_category 
	foreign key (category_id) 
    references category (category_id)
    on delete restrict
    on update cascade
);

#Book_author Table

create table if not exists book_author (
book_id int unsigned not null,
author_id int unsigned not null,
primary key (book_id, author_id),
constraint fk_book_author_book
	foreign key (book_id) 
    references book (book_id)
    on delete cascade
    on update cascade,
constraint fk_book_author_author 
	foreign key (author_id) 
    references author (author_id)
    on delete restrict
    on update cascade
    );

#Book_copy Table

create table if not exists book_copy (
book_copy_id int unsigned not null auto_increment,
book_avail_copies int unsigned, 
book_id int unsigned not null,
school_id int unsigned not null,
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
myusername varchar(50) not null unique,
mypassword varchar(50) not null,
birth_year year,
user_role enum ('S', 'T', 'O', 'M'), 
primary key (user_id)
); 

#Borrow_info Table

create table if not exists borrow_info (
borrow_id int unsigned not null auto_increment,
user_id int unsigned not null,
book_copy_id int unsigned not null,
borrow_date date not null default (current_date),
due_date date default (borrow_date + 7),
return_date date,
primary key (borrow_id),
constraint fk_borrow_info_users
	foreign key (user_id)
	references users (user_id)
	on delete cascade
	on update cascade,
constraint fk_borrow_info_book_copy
	foreign key (book_copy_id)
	references book_copy (book_copy_id)
	on delete cascade
	on update cascade
);

#Reserve_info Table

create table if not exists reserve_info (
    reserve_id int unsigned not null auto_increment,
    user_id int unsigned not null,
    book_copy_id int unsigned not null,
    primary key (reserve_id),
    constraint fk_reserve_info_users
        foreign key (user_id)
        references users (user_id)
        on delete cascade
        on update cascade,
    constraint fk_reserve_info_book_copy
        foreign key (book_copy_id)
        references book_copy (book_copy_id)
        on delete cascade
        on update cascade
);

#Review Table

create table if not exists review (
    review_id int unsigned not null auto_increment,
    book_id int unsigned not null,
    user_id int unsigned not null,
    book_review text default null,
    likert int default null check (likert > 0 and likert <= 5),
    primary key (review_id),
    constraint fk_review_book
        foreign key (book_id)
        references book (book_id)
        on delete cascade
        on update cascade,
    constraint fk_review_users
        foreign key (user_id)
        references users (user_id)
        on delete cascade
        on update cascade
);
