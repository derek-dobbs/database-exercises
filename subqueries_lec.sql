USE employees;

DESCRIBE players;

SELECT * FROM players;

SELECT CONCAT(players.first_name, ' ', players.last_name) AS full_name
FROM players
WHERE team_id IN (
    SELECT id
    FROM teams
    WHERE name = '49ers'
    );

SELECT CONCAT(teams.city, ' ', teams.name) AS Team
FROM teams
WHERE id IN (
        SELECT team_id
        FROM players
        WHERE first_name = 'Patrick'
    );

# From our employees database, we can use this example query to find all the department managers names and birth dates:
SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
)
LIMIT 10;

USE codeup_test_db;

INSERT INTO users (name, email, role_id)
VALUES('fer', 'fer@codeup.com',
       (SELECT id FROM roles WHERE name = 'commenter')
      );

DESCRIBE users;
SELECT * FROM users;

DESCRIBE roles;
SELECT * FROM roles;

UPDATE users
SET role_id = (SELECT id FROM roles WHERE name = 'admin')
WHERE email = 'fer@codeup.com';

SELECT * FROM roles;
SELECT * FROM users;



