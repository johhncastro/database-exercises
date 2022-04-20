SELECT *
FROM albums;

UPDATE albums
SET sales = sales * 10;

SELECT name AS "all albums relesed before 1980"
FROM albums
WHERE release_date < 1980;

UPDATE albums
SET release_date = albums.release_date < 1980;

SELECT name AS "all albums relesed by micheal jackson"
FROM albums
WHERE artist = 'michael jackson';

UPDATE albums
SET artist = 'michael jackson',
    artist = 'peter jackson'
WHERE artist = 'michael jackson'


