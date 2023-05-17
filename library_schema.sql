CREATE DATABASE IF NOT EXISTS AbsoluteMinds;
USE Absoluteminds;

#School Library Table

create table if not exists school_library (
school_id int unsigned not null auto_increment,
school_name varchar(50) not null,
school_address varchar(50) not null,
city varchar(50) not null,
email varchar(50) not null,
director_first_name varchar(25) not null,
director_last_name varchar(25) not null,
operator_first_name varchar(25) not null,
operator_last_name varchar(25) not null,
primary key (school_id)
);

#Book Table
 
create table if not exists book (
book_id int unsigned not null auto_increment, 
book_ISBN int,
book_title varchar(150),
book_publisher varchar(100),
book_summary text default NULL,
primary key (book_id)
);

#Category Table

create table if not exists category (
category_id int unsigned not null auto_increment,
category_name varchar(50) not null,
primary key (category_id)
);

#Author Table

create table if not exists author (
author_id int unsigned not null auto_increment, 
author_first_name varchar(25),
author_last_name varchar(25),
primary key (author_id)
);

#Book_category Table 

create table if not exists book_category (
book_id int unsigned not null,
category_id int unsigned not null,
primary key (book_id, category_id),
constraint fk_book_category_book foreign key (book_id) references book (book_id),
constraint fk_book_category_category foreign key (category_id) references category (category_id)
);

#Book_author Table

create table if not exists book_author (
book_id int unsigned not null,
author_id int unsigned not null,
primary key (book_id, author_id),
constraint fk_book_author_book
	foreign key (book_id) 
    references book (book_id),
constraint fk_book_author_author 
	foreign key (author_id) 
    references author (author_id)
);

#Book_copy Table

create table if not exists book_copy (
 book_copy_id int unsigned not null auto_increment,
 book_avail_copies int, 
book_id int unsigned not null,
school_id int unsigned not null,
primary key (book_copy_id),
constraint fk_book_copy_book
	foreign key (book_id) 
    references book (book_id),
constraint fk_book_copy_school_library
	foreign key (school_id) 
    references school_library (school_id)
);

#User Table
# S = Student, T = Teacher, O = Library Operator, M = System Manager

create table if not exists users (
user_id int unsigned not null auto_increment,
user_first_name varchar(25) not null,
user_last_name varchar(25) not null,
myusername varchar(50) not null,
mypassword varchar(50) not null,
birthday year default null,
user_role enum ('S', 'T', 'O', 'M'), 
primary key (user_id)
); 
