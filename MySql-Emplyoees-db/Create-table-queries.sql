CREATE DATABASE Employees_db;
USE Employees_db;

CREATE TABLE employees(
id INT AUTO_INCREMENT,
first_name VARCHAR(150) NOT NULL,
last_name VARCHAR(150) NOT NULL,
gender ENUM('f','m') NOT NULL,
date_of_birth DATE NOT NULL,
email_id VARCHAR(150) NOT NULL UNIQUE,
password VARCHAR(100) NOT NULL,
mobile_no BIGINT NOT NULL UNIQUE,
hire_date DATE ,
modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
status TINYINT DEFAULT '1',
PRIMARY KEY(id)
);
ALTER TABLE `employees` 
ADD CONSTRAINT `email_validation` 
    CHECK (`email_id` REGEXP "^[a-zA-Z0-9][a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]*?[a-zA-Z0-9._-]?@[a-zA-Z0-9][a-zA-Z0-9._-]*?[a-zA-Z0-9]?\\.[a-zA-Z]{2,63}$");
    
ALTER TABLE employees 
ADD CONSTRAINT chk_phone CHECK (mobile_no REGEXP '^\d{10}$' AND NOT mobile_no LIKE '12345%');

ALTER TABLE `employees` 
 drop CONSTRAINT chk_phone;

-- select * from students full join departments on 

CREATE TABLE departments(
id INT AUTO_INCREMENT,
name VARCHAR(150) NOT NULL,
status boolean default '1',
PRIMARY KEY(id)
);

CREATE TABLE salaries(	
id INT AUTO_INCREMENT,
emp_id INT NOT NULL,
salary BIGINT NOT NULL,
from_date DATE NOT NULL,
to_date DATE,
PRIMARY KEY(id),
FOREIGN KEY (emp_id) REFERENCES employees(id) ON DELETE CASCADE
);

CREATE TABLE dept_employee(
id INT AUTO_INCREMENT,
emp_id INT NOT NULL,
dept_id INT NOT NULL,
from_date DATE NOT NULL,
to_date DATE,
PRIMARY KEY(id),
FOREIGN KEY(emp_id) REFERENCES employees(id) ON DELETE CASCADE,
FOREIGN KEY(dept_id) REFERENCES departments(id) ON DELETE CASCADE
);

insert into dept_employee(emp_id,dept_id,from_date)values (1,7,'2016-01-15');

insert into dept_employee(emp_id,dept_id,from_date)values (2,7,'2016-01-15');

CREATE TABLE dept_manager(
id INT AUTO_INCREMENT,
emp_id INT NOT NULL, 
dept_id INT NOT NULL,
from_date DATE NOT NULL,
to_date DATE,
PRIMARY KEY(id),
FOREIGN KEY(emp_id) REFERENCES employees(id) ON DELETE CASCADE,
FOREIGN KEY(dept_id) REFERENCES departments(id) ON DELETE CASCADE
);

insert into dept_manager(emp_id,dept_id,from_date) values (1,7,'2016-01-15');

CREATE TABLE employee_titles(
id INT AUTO_INCREMENT,
emp_id INT NOT NULL,
title VARCHAR(150),
from_date DATE NOT NULL,
to_date DATE,
PRIMARY KEY(id),
FOREIGN KEY(emp_id) REFERENCES employees(id) ON DELETE CASCADE
);

insert into employee_titles(emp_id,title,from_date) values (1,'Chief People Officer','2016-01-15');