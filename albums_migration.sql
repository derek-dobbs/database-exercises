CREATE DATABASE IF NOT EXISTS codeup_test_db;

USE codeup_test_db;

-- //Write some SQL to drop a table named albums if it exists.
DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50),
    name VARCHAR(50),
    release_date CHAR(4),
    sales FLOAT UNSIGNED,
    genre VARCHAR(50),
    PRIMARY KEY (id)
);