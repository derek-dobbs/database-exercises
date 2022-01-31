USE employees;

DESCRIBE departments;
DESCRIBE dept_emp;
DESCRIBE dept_manager;
DESCRIBE employees;
DESCRIBE players;
DESCRIBE salaries;
DESCRIBE teams;
DESCRIBE titles;

USE codeup_test_db;

DESCRIBE albums;

ALTER TABLE albums
ADD UNIQUE (name, artist);

DESCRIBE albums;

INSERT INTO albums(name, artist)
VALUES ('Thriller', 'Michael Jackson');


