USE codeup_test_db;

-- this will remove the table if it exist
DROP TABLE IF EXISTS albums;
CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist CHAR(100) NOT NULL ,
    name VARCHAR(50) NOT NULL ,
    release_date INT NOT NULL,
    sales FLOAT,
    genre CHAR(200),
    PRIMARY KEY (id)
);

DESC albums;

SHOW CREATE TABLE albums;