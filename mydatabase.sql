CREATE DATABASE myschoolib;
USE myschoolib;

CREATE TABLE IF NOT EXISTS school (
    school_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    school_name VARCHAR(50) NOT NULL,
    school_address VARCHAR(50) NOT NULL,
    phone_number VARCHAR(10) NOT NULL,
    email VARCHAR(50) NOT NULL,
    director_name VARCHAR(50) NOT NULL,
    operator VARCHAR(50) NOT NULL,
    PRIMARY KEY(school_name)
);

CREATE TABLE IF NOT EXISTS book (
    
)