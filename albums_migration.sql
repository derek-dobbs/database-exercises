CREATE DATABASE IF NOT EXISTS codeup_test_db;

USE codeup_test_db;

-- //Write some SQL to drop a table named albums if it exists.
DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(250) NOT NULL,
    name VARCHAR(250) NOT NULL,
    release_date INT UNSIGNED,
    sales FLOAT UNSIGNED,
    genre VARCHAR(250),
    PRIMARY KEY (id)
);

DESCRIBE TABLE albums;
SHOW CREATE TABLE albums;