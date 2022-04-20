USE codeup_test_db;

-- this will remove the table if it exist
DROP TABLE IF EXISTS albums;
CREATE TABLE IF NOT EXISTS albums
(
    id           INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist       CHAR(100)    NOT NULL,
    name         VARCHAR(50)  NOT NULL,
    release_date INT          NOT NULL,
    sales        FLOAT,
    genre        CHAR(200),
    PRIMARY KEY (id)
);

# DESC albums;
#
# SHOW CREATE TABLE albums;

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('kanye west', 'donda', '2022', 1231234141, 'rap');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('frank ocean', 'nights', '2017', 21241251616, 'melodic rap , indie rap , indie pop');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('juice wrld', 'goodbye and good riddance', '2017', 12412125, 'melodic rap');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('drake', 'views', '2017', 123124151515, 'rap');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('MGK', 'Tickets to my Downfall', '2020', 1231235, 'rock');

-- THIS SELECTS ALL OF THE ALBUMS THAT IS OLDER THEN 2019 USING THE SELECT FEATURE.
# SELECT * FROM albums where release_date > 2019;
#
-- THIS SELECTS ALL ALBUMS OVER 10 MILL SALES USING THE SELECT FEATURE.
# SELECT * FROM albums WHERE sales > 10000000;

DESC albums;

-- this will update every artist to 'get trolled' because there is no where statement
# UPDATE albums SET artist = 'get trolled';

UPDATE albums
SET artist = 'Juice Wrld'
WHERE artist = 'juice wrld';

SHOW CREATE TABLE albums;
