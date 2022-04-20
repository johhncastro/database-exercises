USE codeup_test_db;

SELECT name AS "The name of all albums by Pink Floyd."
FROM albums
WHERE artist = 'pink floyd';

SELECT release_date AS "The year Sgt. Pepper's Lonely Hearts Club Band was released"
FROM albums
WHERE name = 'sgt. peppers lonely hearts club band';

SELECT genre AS "the genre for Nevermind"
FROM albums
WHERE name = 'nevermind';

SELECT name AS "Which albums were released in the 1990s"
FROM albums
WHERE release_date > 1989 && albums.release_date < 2000;

SELECT name AS "Which albums had less than 20 million certified sales"
FROM albums
WHERE sales < 20000000;

SELECT name AS "all the albums with a genre of Rock"
FROM albums
WHERE genre = 'rock';

