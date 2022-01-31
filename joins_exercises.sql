CREATE DATABASE IF NOT EXISTS join_test_db;
USE join_test_db;

CREATE TABLE IF NOT EXISTS roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       role_id INT UNSIGNED DEFAULT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
                                             ('bob', 'bob@example.com', 1),
                                             ('joe', 'joe@example.com', 2),
                                             ('sally', 'sally@example.com', 3),
                                             ('adam', 'adam@example.com', 3),
                                             ('jane', 'jane@example.com', null),
                                             ('mike', 'mike@example.com', null);
# DESCRIBE users;
# SELECT * FROM users;
# Insert 4 new users into the database. One should have a NULL role. The other three should be authors.
INSERT INTO users(name, email, role_id)
VALUES ('PersonA', 'personA@example.com', 2),
       ('PersonB', 'personB@example.com', 2),
       ('PersonC', 'personC@example.com', 2),
       ('PersonD', 'personD@example.com', NULL);

SELECT * FROM users;

SELECT users.name as user_name, roles.name as role_name
FROM users
         JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
         LEFT JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
         RIGHT JOIN roles ON users.role_id = roles.id;

SELECT * FROM users;

#Use COUNT and the appropriate join type to get a list of roles along with the number of users that have a given role.
SELECT roles.name AS role_name, COUNT(u.role_id) AS count
FROM roles
LEFT JOIN users u on roles.id = u.role_id
GROUP BY roles.name;

#
USE employees;

# SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
# FROM employees as e
#          JOIN dept_emp as de
#               ON de.emp_no = e.emp_no
#          JOIN departments as d
#               ON d.dept_no = de.dept_no
# WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;
#
# SELECT e.dept_name AS Department_Name,
#        CONCAT(e.first_name, ' ', e.last_name)
# FROM employees as e

SELECT d.dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
    JOIN dept_manager AS dm ON e.emp_no = dm.emp_no
    JOIN departments AS d ON dm.dept_no = d.dept_no
WHERE dm.to_date > CURDATE()
ORDER BY d.dept_name;

SELECT d.dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
         JOIN dept_manager AS dm ON e.emp_no = dm.emp_no
         JOIN departments AS d ON dm.dept_no = d.dept_no
WHERE dm.to_date > CURDATE() AND e.gender = 'F'
ORDER BY d.dept_name;

SELECT t.title AS 'Title', COUNT(t.emp_no) AS 'Total'
FROM titles AS t
JOIN dept_emp AS de ON t.emp_no = de.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
WHERE t.to_date > CURDATE()
AND d.dept_name = 'Customer Service'
AND de.to_date > CURDATE()
GROUP BY t.title;

SELECT d.dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager',
       s.salary AS 'Salary'
FROM employees AS e
JOIN dept_manager AS dm ON e.emp_no = dm.emp_no
JOIN departments AS d ON dm.dept_no = d.dept_no
JOIN salaries AS s ON e.emp_no = s.emp_no
WHERE s.to_date > CURDATE()
AND dm.to_date > CURDATE()
ORDER BY d.dept_name;







