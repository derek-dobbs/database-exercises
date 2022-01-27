USE employees;

# SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') AND gender IN ('M') ORDER BY first_name;
SELECT * FROM employees WHERE (first_name IN ('Irena')
    OR first_name IN ('Vidya')
    OR first_name IN('Maya'))
                          AND gender IN ('M')
    ORDER BY last_name, first_name;

SELECT * FROM employees WHERE last_name LIKE 'E%';

SELECT * FROM employees WHERE last_name LIKE '%q%';

SELECT * FROM employees WHERE (last_name LIKE 'E%') OR (last_name LIKE '%E');
# better way to do it: SELECT * FROM employees WHERE last_name LIKE 'E%E';

SELECT * FROM employees WHERE (last_name LIKE 'E%') AND (last_name LIKE '%E');

SELECT * FROM employees WHERE (last_name LIKE ('%q%')) AND (last_name NOT LIKE ('%qu%'));
