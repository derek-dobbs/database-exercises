USE employees;

# SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') AND gender IN ('M') ORDER BY first_name;
SELECT * FROM employees WHERE (first_name IN ('Irena')
    OR first_name IN ('Vidya')
    OR first_name IN('Maya'))
                          AND gender IN ('M')
ORDER BY last_name DESC, first_name DESC;

SELECT * FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no DESC;

SELECT * FROM employees WHERE last_name LIKE '%q%';

# better way to do it: SELECT * FROM employees WHERE last_name LIKE 'E%E';
SELECT * FROM employees WHERE (last_name LIKE 'E%') OR (last_name LIKE '%E');

# Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.
SELECT CONCAT(first_name, ' ', last_name) FROM employees WHERE (last_name LIKE 'E%') OR (last_name LIKE '%E');

SELECT * FROM employees WHERE (last_name LIKE 'E%') OR (last_name LIKE '%E');

SELECT * FROM employees WHERE (last_name LIKE 'E%') AND (last_name LIKE '%E');

SELECT * FROM employees WHERE (last_name LIKE ('%q%')) AND (last_name NOT LIKE ('%qu%'));

# Find all employees born on Christmas — 842 rows.
SELECT first_name, last_name, birth_date FROM employees WHERE month(birth_date) = 12 AND day(birth_date) = 25;

# Find all employees hired in the 90s and born on Christmas — 362 rows.

