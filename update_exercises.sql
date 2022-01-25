USE codeup_test_db;

SELECT name AS 'Here are all the albums:'
FROM albums;

SELECT name AS 'Here are all albums released before 1980:'
FROM albums WHERE release_date < 1980;

SELECT name AS 'Here are the albums by Michael Jackson:'
FROM albums WHERE artist = 'Michael Jackson';


