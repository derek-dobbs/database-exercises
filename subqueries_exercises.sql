USE employees;

# TODONE: Find all the employees with the same hire date as employee 101010 using a subquery (69 rows).
SELECT CONCAT(first_name, ' ', last_name) AS 'Employees with same hire date as employee #101010'
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = '101010'
    );

# Find all the titles held by all employees with the first name Aamod (314 total titles, 6 unique titles).


# Find all the current department managers that are female.

# BONUS
# 1. Find all the department names that currently have female managers.

# 2. Find the first and last name of the employee with the highest salary.