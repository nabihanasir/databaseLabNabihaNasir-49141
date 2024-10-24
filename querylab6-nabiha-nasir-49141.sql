CREATE DATABASE school_management;
CREATE TABLE students ( student_id int Primary Key Auto_Increment,
first_name varchar(50) NOT NULL,
last_name varchar(50) NOT NULL,
email varchar(100) UNIQUE,
date_of_birth DATE,
gender ENUM('Male', 'Female'),
class_id int
);
CREATE TABLE classes ( class_id int Primary Key Auto_Increment,
class_name VARCHAR(50) NOT NULL,
teacher_name VARCHAR(50) NOT NULL);

ALTER TABLE students ADD phone_number varchar(15);
ALTER TABLE students MODIFY email varchar(150);
ALTER TABLE students DROP COLUMN gender;

DROP TABLE classes;
DROP DATABASE school_management;