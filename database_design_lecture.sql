USE codeup_test_db;

CREATE TABLE authors
(
    id           INT UNSIGNED NOT NULL AUTO_INCREMENT,
    authors_name VARCHAR(50)  NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO authors (authors_name)
VALUES ('marcel proust'),
       ('niel gaiman');

ALTER TABLE quotes
    DROP COLUMN author;

ALTER TABLE quotes
    ADD COLUMN author_id INT UNSIGNED NOT NULL;


UPDATE quotes
SET author_id = (SELECT id FROM authors WHERE authors_name = 'marcel proust')
WHERE author = 'marcel proust';

UPDATE quotes
SET author_id = (SELECT id FROM authors WHERE authors_name = 'niel gaiman')
WHERE author = 'neil gaiman';

ALTER TABLE quotes
    ADD CONSTRAINT quotes_author_id_fk FOREIGN KEY (author_id) REFERENCES authors (id);

SELECT content, authors_name AS author FROM authors a JOIN quotes q ON a.id = q.author_id JOIN quote_topics qt ON q.id = qt.quote_id JOIN topics t on qt.topic_id = t.id WHERE topic = 'literature';

