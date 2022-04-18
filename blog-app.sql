CREATE DATABASE IF NOT EXISTS blog_app;

USE blog_app;

CREATE TABLE IF NOT EXISTS users (
--   unsigned, NOT ASSIGNED ,no negative values
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL ,
    email VARCHAR(100),
    job_title VARCHAR(100),
    address VARCHAR(200),
    creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
    PRIMARY KEY (id)

);
# this will create the table

# DESC users;



# this will delete the table

# DROP TABLE users;

CREATE TABLE IF NOT EXISTS post(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    title VARCHAR(100),
    body TEXT,
    PRIMARY KEY (id)
);

INSERT INTO users ( name, email, job_title, address)
values ('john castro','johhncaastro@gmail.com','software dev', '5111 Ashton Audrey');

INSERT INTO post ( user_id, title, body)
values (1, 'da way', 'do u know the way?');


