USE employees_db;

-- SELECT ALL RECORDS FROM TABLES --
SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM salaries;
SELECT * FROM dept_employee;
SELECT * FROM dept_manager;
SELECT * FROM employee_titles;

-- Fetch the employees who were hired between two dates --
SELECT * FROM employees WHERE hire_date BETWEEN '2020-01-15' AND '2022-12-30';

-- Fetch the employees who were hired in a particular year --
SELECT * FROM employees WHERE YEAR(hire_date) = 2022;

-- Count the number of employees by gender --
SELECT gender, COUNT(gender) FROM employees GROUP BY gender;

-- Select all employees and order them by ID in descending order --
SELECT * FROM employees ORDER BY id DESC;

-- Find the employee with the second-highest salary --
SELECT * FROM employees ORDER BY salary DESC LIMIT 1 OFFSET 1;

-- Select all people from the “employees” table whose first name is “Noah” --
SELECT * FROM employees WHERE first_name = 'Noah';

-- Retrieve a list of all female employees whose first name is Olivia --
SELECT * FROM employees WHERE first_name = 'Olivia' AND gender = 'F';

-- Retrieve a list of employees whose first name is either Olivia or Isabella --
SELECT * FROM employees WHERE first_name IN ('Olivia', 'Isabella');

-- Retrieve a list of all female employees whose first name is either Olivia or Isabella --
SELECT * FROM employees WHERE gender = 'F' AND (first_name = 'Olivia' OR first_name = 'Isabella');

-- Use the IN operator to select individuals with first names Daniel or Sophia --
SELECT * FROM employees WHERE first_name IN ('Daniel', 'Sophia');

-- Extract all records from the ‘employees’ table, aside from those with employees named Mason, Benjamin, or Ava --
SELECT * FROM employees WHERE first_name NOT IN ('Mason', 'Benjamin', 'Ava');

-- Select individuals from the ‘employees’ table whose first name starts with “Mason” --
SELECT * FROM employees WHERE first_name LIKE 'Mason%';

-- Retrieve a list of employees hired in the year 2016 --
SELECT * FROM employees WHERE YEAR(hire_date) = 2016;

-- Retrieve a list of employees whose employee number has 5 characters and starts with “1” --
SELECT * FROM employees WHERE id LIKE '1%';

-- Extract all individuals from the ‘employees’ table whose first name contains “Benjamin” --
SELECT * FROM employees WHERE first_name LIKE '%Benjamin%';

-- Extract a list of names of employees that do not contain “Benjamin” --
SELECT * FROM employees WHERE first_name NOT LIKE '%Benjamin%';

-- Select all information from the “salaries” table for contracts between $66,000 and $70,000 per year --
SELECT * FROM salaries WHERE salary BETWEEN 66000 AND 70000;

-- Retrieve a list of individuals whose employee number is not between 14 and 25 --
SELECT * FROM employees WHERE id NOT BETWEEN 14 AND 25;

-- Select the names of all departments with numbers between 3 and 5 --
SELECT * FROM departments WHERE id BETWEEN 3 AND 5;

-- Select the names of all departments whose department number value is not null --
SELECT * FROM departments WHERE id IS NOT NULL;

-- Retrieve a list of data about all female employees hired in the year 2022 or after --
SELECT * FROM employees WHERE YEAR(hire_date) >= 2022 AND gender = 'F';

-- Extract a list of all employees with salaries higher than $150,000 per annum --
SELECT * FROM salaries WHERE salary > 150000;

-- Obtain a list of all different “hire dates” from the “employees” table --
SELECT DISTINCT hire_date FROM employees;

-- Count the number of annual contracts with a value higher than or equal to $100,000 in the salaries table --
SELECT COUNT(salary) FROM salaries WHERE salary >= 100000;

-- Count the number of managers in the “employees” database --
SELECT COUNT(*) FROM dept_manager;

-- Select all data from the “employees” table, ordering it by “hire date” in descending order --
SELECT * FROM employees ORDER BY hire_date DESC;

-- Query to obtain two columns - annual salaries higher than $80,000 and the number of employees with the same salary --
SELECT salary, COUNT(salary) AS emps_with_same_salary FROM salaries WHERE salary > 80000 GROUP BY salary ORDER BY salary;

-- Select all employees whose average salary is higher than $120,000 per annum --
SELECT emp_id, AVG(salary) FROM salaries GROUP BY emp_id HAVING AVG(salary) > 120000 ORDER BY emp_id;

-- Select employee numbers of individuals who have signed more than 1 contract after January 1, 2000 --
SELECT emp_id, COUNT(emp_id) AS number_of_contract FROM dept_employee
 WHERE from_date > '2000-01-01' GROUP BY emp_id 
 HAVING number_of_contract > 1 ORDER BY emp_id;

-- Select the first 100 rows from the ‘dept_employee’ table --
SELECT * FROM dept_employee LIMIT 100;
