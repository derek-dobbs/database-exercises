USE codeup_test_db;

-- The code on the next two lines doesn't work:
-- SELECT * AS 'Here are all the albums:'
-- FROM albums;
--------------------------------------------
-- SELECT * FROM albums;
--
-- UPDATE albums
-- SET sales = (sales * 10);
--
-- -- SELECT * FROM albums;
-- --------------------------------------------
-- SELECT name AS 'Here are all albums released before 1980:'
-- FROM albums WHERE release_date < 1980;
--
-- -- UPDATE albums
-- -- SET release_date = (release_date - 100);
--
-- -- SELECT name AS 'Here are all albums released before 1980 converted to the 1800s:'
-- -- FROM albums WHERE release_date < 1880;
--
-- --------------------------------------------
--
-- SELECT name AS 'Here are the albums by Michael Jackson:'
-- FROM albums WHERE artist = 'Michael Jackson';

------------------------------------------------------------------------------------------------------------------------
SELECT 'All albums:' AS 'Info';
SELECT name, sales FROM albums;
UPDATE albums SET sales = (sales *10);

SELECT 'Albums released before 1980' AS 'Info';
SELECT * FROM albums WHERE release_date < 1980;
UPDATE albums SET release_date = release_date - 100 WHERE release_date < 1980;
SELECT * FROM albums WHERE release_date < 1980;

SELECT 'Albums by Michael Jackson' AS 'Michael Jackson Albums';
SELECT *


