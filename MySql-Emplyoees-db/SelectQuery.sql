USE employees_db;

-- SELECT ALL RECORDS FROM TABLES --
SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM salaries;
SELECT * FROM dept_employee;
SELECT * FROM dept_manager;
SELECT * FROM employee_titles;

-- to fetch the employees who was hired between two dates --
SELECT * FROM employees WHERE hire_date  BETWEEN '2020-1-15' AND '2022-12-30'; 

-- to fetch the employees who was hired in a particular year --
SELECT * FROM employees WHERE YEAR(hire_date)=2022; 

-- to  --
SELECT gender, COUNT(gender) FROM employees GROUP BY gender;

select * from employees order by id desc;

-- SELECT * FROM employees
-- UNION
-- SELECT null;

-- to find the employee who gets second maximum salary --
SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 1 OFFSET 1;

/*Select all people from the “employees” table whose first name is “Elvis”.*/
SELECT *
FROM employees
WHERE first_name LIKE 'Noah';

/*Retrieve a list with all female employees whose first name is Kellie. */
SELECT *
FROM employees
WHERE first_name LIKE 'Olivia'
AND gender = 'F';

/*Retrieve a list with all employees whose first name is either Kellie or Aruna.*/
SELECT *
FROM employees
WHERE first_name IN ('Olivia', 'Isabella');

/*Retrieve a list with all female employees whose first name is either Kellie or Aruna.*/
SELECT *
FROM employees
WHERE gender = 'F'
AND (first_name = 'Olivia' OR first_name = 'Isabella');

/*Use the IN operator to select all individuals from the “employees” table, whose first name is either “Denis”, or “Elvis”.*/
SELECT *
FROM employees
WHERE first_name IN ('Daniel','Sophia');

/*Extract all records from the ‘employees’ table, aside from those with employees named John, Mark, or Jacob.*/
SELECT *
FROM employees
WHERE first_name NOT IN ('Mason','Benjamin','Ava');

/*Working with the “employees” table, use the LIKE operator to select the data about all individuals, 
whose first name starts with “Mark”; specify that the name can be succeeded by any sequence of characters.*/
SELECT *
FROM employees
WHERE first_name LIKE 'Mason%';

/*Retrieve a list with all employees who have been hired in the year 2000.*/
SELECT *
FROM employees
WHERE YEAR(hire_date) = '2016'; 

/*Retrieve a list with all employees whose employee number is written with 5 characters, and starts with “1000”. */
SELECT *
FROM employees
WHERE id LIKE '1_';

/*Extract all individuals from the ‘employees’ table whose first name contains “Jack”.*/
SELECT *
FROM employees
WHERE first_name LIKE '%Benjamin%';

/*Once you have done that, extract another list containing the names of employees that do not contain “Jack”.*/
SELECT *
FROM employees
WHERE first_name NOT LIKE '%Benjamin%';

/*Select all the information from the “salaries” table regarding contracts from 66,000 to 70,000 dollars per year.*/
SELECT *
FROM salaries
WHERE salary BETWEEN 66000 AND 70000;

/*Retrieve a list with all individuals whose employee number is not between ‘10004’ and ‘10012’.*/
SELECT *
FROM employees 
WHERE id NOT BETWEEN 14 AND 25;
 
/*Select the names of all departments with numbers between ‘d003’ and ‘d006’.*/
SELECT *
FROM departments
WHERE id BETWEEN 3 AND 5;

/*Select the names of all departments whose department number value is not null.*/
SELECT *
FROM departments
WHERE id IS NOT NULL;

/*Retrieve a list with data about all female employees who were hired in the year 2000 or after.*/
/*Hint: If you solve the task correctly, SQL should return 7 rows.*/
SELECT *
FROM employees
WHERE YEAR(hire_date) >= 2022
AND gender = 'F';

/*Extract a list with all employees’ salaries higher than $150,000 per annum.*/
SELECT *
FROM salaries
WHERE salary > 150000;

/*Obtain a list with all different “hire dates” from the “employees” table. */
SELECT DISTINCT hire_date
FROM employees;

/*How many annual contracts with a value higher than or equal to $100,000 have been registered in the salaries table?*/
SELECT COUNT(salary)
FROM salaries
WHERE salary >= 100000;

/*How many managers do we have in the “employees” database? Use the star symbol (*) in your code to solve this exercise.*/
SELECT COUNT(*)
FROM dept_manager;

/*Select all data from the “employees” table, ordering it by “hire date” in descending order.*/
SELECT *
FROM employees
ORDER BY hire_date DESC;

/*Write a query that obtains two columns. The first column must contain annual salaries higher than 80,000 dollars. 
The second column, renamed to “emps_with_same_salary”, must show the number of employees contracted to that salary. 
Lastly, sort the output by the first column.*/
SELECT salary, COUNT(salary) AS "emps_with_same_salary"
FROM salaries
WHERE salary > 80000
GROUP BY 1
ORDER BY 1;

/*Select all employees whose average salary is higher than $120,000 per annum.
Hint: You should obtain 101 records.*/
SELECT emp_no, AVG(salary)
FROM salaries
GROUP BY emp_id
HAVING AVG(salary) > 120000
ORDER BY 1;

/*Select the employee numbers of all individuals who have signed more than 1 contract after the 1st of January 2000.
Hint: To solve this exercise, use the “dept_employee” table.*/
SELECT emp_id, COUNT(emp_id) AS number_of_contract
FROM dept_employee
WHERE from_date > '2000-01-01'
GROUP BY emp_id
HAVING number_of_contract > 1
ORDER BY emp_id;

/*Select the first 100 rows from the ‘dept_employee’ table. */
SELECT *
FROM dept_employee
LIMIT 10;
