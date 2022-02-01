USE employees;

# TODONE: Find all the employees with the same hire date as employee 101010 using a subquery (69 rows).
SELECT CONCAT(first_name, ' ', last_name) AS 'Employees with same hire date as employee #101010'
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = '101010'
    );

#TODONE Find all the titles held by all employees with the first name Aamod (314 total titles, 6 unique titles).
SELECT title AS 'Titles held by employees named Aamod'
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
    );

SELECT DISTINCT title AS 'Distinct titles held by employees named Aamod'
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
);

# Find all the current department managers that are female.
SELECT CONCAT(first_name, ' ', last_name) AS 'Female Department Managers'
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date > curdate())
    AND gender = 'F';

# BONUS
# 1. Find all the department names that currently have female managers.

# 2. Find the first and last name of the employee with the highest salary.