USE employees;

SELECT CONCAT(last_name, ' ', first_name) AS lname, salaries.salary AS salary
FROM employees
         JOIN salaries ON employees.emp_no = salaries.emp_no;

# select first_name, last_name FROM employees WHERE last_name = 'facello'

USE codeup_test_db;

DROP TABLE IF EXISTS `persons`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persons`
(
    `id`         INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `first_name` VARCHAR(25)  NOT NULL,
    `album_id`   INT UNSIGNED NOT NULL,
    PRIMARY KEY (`id`),
    KEY `album_id` (`album_id`),
    CONSTRAINT `persons_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 5
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `persons`
VALUES (1, 'Olivia', 29),
       (2, 'Santiago', 27),
       (3, 'Tareq', 15),
       (4, 'Anaya', 28);

# ////////  same  //////////
# longhand
SELECT persons.first_name, albums.name
FROM persons
         JOIN albums ON persons.album_id = albums.id;
# shorthand
SELECT p.first_name, a.name
FROM persons p
         JOIN albums a ON p.album_id = a.id;
SELECT p.first_name, a.name
FROM persons p
         LEFT JOIN albums a ON a.id = p.album_id;
# ///////  same  ///////////


SHOW INDEXES FROM persons;
SELECT *
FROM information_schema.table_constraints
WHERE constraint_schema = 'codeup_test_db';

CREATE TABLE preferences
(
    person_id INT UNSIGNED NOT NULL,
    album_id  INT UNSIGNED NOT NULL,
    CONSTRAINT preferences_person_id_fk FOREIGN KEY (person_id) REFERENCES persons (id),
    CONSTRAINT preferences_album_id_fk FOREIGN KEY (album_id) REFERENCES albums (id)
);

INSERT INTO preferences (person_id, album_id)
VALUES (1, 12),
       (1, 5),
       (1, 22),
       (1, 29),
       (2, 1),
       (2, 31),
       (2, 30),
       (3, 11),
       (3, 26),
       (3, 25);

SELECT p.first_name AS name, a.name AS album
FROM persons p
         JOIN preferences pf ON p.id = pf.person_id
         JOIN albums a ON pf.album_id = a.id;

USE employees;


SELECT employees.last_name AS name, salaries.salary AS salary
FROM employees
         NATURAL JOIN salaries;


USE codeup_test_db;

drop TABLE quotes;
CREATE TABLE `quotes` (
                          `id` int NOT NULL AUTO_INCREMENT,
                          `content` varchar(240) NOT NULL,
                          `author` varchar(50) NOT NULL,
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO quotes (content, author) VALUES
                                         ('The real voyage of discovery consists not in seeking new landscapes, but in having new eyes.', 'Marcel Proust'),
                                         ('My destination is no longer a place, rather a new way of seeing.', 'Marcel Proust'),
                                         ('Reading is that fruitful miracle of a communication in the midst of solitude.', 'Marcel Proust'),
                                         ('Fairy tales are more than true: not because they tell us that dragons exist, but because they tell us that dragons can be beaten.', 'Neil Gaiman'),
                                         ('I hope that in this year to come, you make mistakes. Because if you are making mistakes...you''re Doing Something.', 'Neil Gaiman'),
                                         ('I hope you will have a wonderful year, that you''ll dream dangerously and outrageously, that you''ll make something that didn''t exist before you made it', 'Neil Gaiman');

CREATE TABLE topics (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        topic VARCHAR(50),
                        PRIMARY KEY (id)
);

INSERT INTO topics (topic) VALUES
                               ('literature'),
                               ('philosophy'),
                               ('inspiration'),
                               ('hope');


CREATE TABLE quote_topics (
                              quote_id INT NOT NULL,
                              topic_id INT UNSIGNED NOT NULL,
                              CONSTRAINT quote_topics_quote_id_fk FOREIGN KEY (quote_id) REFERENCES quotes (id),
                              CONSTRAINT quote_topics_topic_id_fk FOREIGN KEY (topic_id) REFERENCES topics (id)
);


INSERT INTO quote_topics  (quote_id, topic_id) VALUES
                                                   (11, 2),
                                                   (11, 3),
                                                   (12, 2),
                                                   (12, 3),
                                                   (13, 1),
                                                   (13, 2),
                                                   (14, 1),
                                                   (15, 3),
                                                   (14, 3),
                                                   (15, 4),
                                                   (16, 3),
                                                   (16, 4);

