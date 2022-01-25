USE codeup_test_db;

SELECT name AS 'Here are the albums by Pink Floyd:'
FROM albums WHERE artist = 'Pink Floyd';

SELECT release_date AS 'Sgt. Pepper''s Lonely Hearts Club Band was released in:'
FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre AS 'The genre for Nevermind is:'
FROM albums WHERE name = 'Nevermind';

SELECT name AS 'These albums were released in the 1990''s:'
FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT name AS 'These albums had less than 20 million certified sales:'
FROM albums WHERE sales < 20;

SELECT name AS 'These albums are in the ''Rock'' genre'
FROM albums WHERE genre = 'Rock';







