CREATE DATABASE IF NOT EXISTS codeup_db;

CREATE TABLE IF NOT EXISTS players
# (
#     id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
#     first_name VARCHAR(50),
#     last_name VARCHAR(100),
#     team VARCHAR(50),
#     position VARCHAR(50)
#
# )
# OR do it this way:
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(100),
    team VARCHAR(50),
    position VARCHAR(50),
    PRIMARY KEY (id)
);

DESCRIBE players;

INSERT INTO players(first_name, last_name, team, position)
VALUES ('Joe', 'Burrow', 'Cincinati Bengals', 'Quarterback'),
       ('Patrick', 'Mahomes', 'KC Chiefs', 'Quarterback');

SELECT * FROM players;

# UNIQUE
CREATE TABLE if not exists teams
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    city VARCHAR(50),
    name VARCHAR(50)
);

ALTER TABLE teams
ADD UNIQUE (name);

DESCRIBE teams;

# WON'T WORK
# INSERT INTO teams(city, name)
# VALUES ('Cincinati', 'Bengals')
#         ('Kansas City', 'Chiefs');
#
# INSERT INTO teams(city, name)
# VALUES ('Dallas', 'Bengals');

DROP TABLE IF EXISTS players;
DROP TABLE IF EXISTS teams;

CREATE TABLE IF NOT EXISTS teams
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    city VARCHAR(50),
    name VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS players
    (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(100),
    team_id INT UNSIGNED NOT NULL,
    position VARCHAR(50),
    FOREIGN KEY (team_id) REFERENCES teams(id)

);

DESCRIBE players;

INSERT INTO teams(city, name)
VALUES ('Cincinati', 'Bengals'),
        ('Kansas City', 'Chiefs');

INSERT INTO players(first_name, last_name, team_id, position)
VALUES ('Joe', 'Burrow', 1, 'Quarterback'),
       ('Patrick', 'Mahomes', 2, 'Quarterback');

SELECT * FROM players;

ALTER TABLE players
ADD UNIQUE first_last_team_position (first_name, last_name, team_id, position);

DESCRIBE players;






