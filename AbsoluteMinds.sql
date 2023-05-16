CREATE DATABASE IF NOT EXISTS AbsoluteMinds;
USE AbsoluteMinds;

# BOOK TABLE 
create table if not exists book (
book_id int unsigned not null auto_increment, 
book_ISBN int,
book_title varchar(150),
book_publisher varchar(100),
book_summary text default NULL,

primary key (book_id)
);

#  BOOK CATEGORY TABLE 

create table if not exists bookCategory (
foreign key (book_id) references book(book_id)
foreign key (category_id) references category(category_id)
);

create table if not exists category(
category_name varchar(100),
category_id int, 

primary key (category_id)
);

create table if not exists author (
author_id int, 
author_first_name varchar(100),
author_last_name varchar(100),

primary key (author_id)
);

create table if not exists book_author (
foreign key(author_id) references author(author_id),
foreign key(book_id) references book(book_id)
);

create table if not exists book_copy (
 book_copy_id int,
 book_avail_copies int, 
 
 foreign key(book_id) references to book(book_id),
 foreign key(school_id) references to school(school_id)

);


