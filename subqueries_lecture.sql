USE employees;

SELECT emp_no
FROM dept_manager;


SELECT birth_date
FROM employees
WHERE emp_no IN (SELECT emp_no FROM dept_manager);

SELECT CONCAT(first_name, ' ', last_name), birth_date
FROM employees
WHERE emp_no IN (SELECT emp_no FROM dept_manager);

USE codeup_test_db;

SELECT *
FROM preferences;


# INSERT INTO preferences (person_id, album_id)
# VALUES ((SELECT person_id FROM persons WHERE first_name = 'tareq'), (SELECT id FROM albums WHERE name = 'rumours'));

SELECT first_name, name
FROM persons
         JOIN preferences p ON persons.id = p.person_id
         JOIN albums a ON a.id = p.album_id
WHERE first_name = 'tareq';

# UPDATE preferences SET  album_id = (SELECT  if FROM albums WHERE  name = 'led zeppelin iv')
# WHERE  album_id = (SELECT if FROM albums WHERE name = 'rumours')
# AND person_id = (SELECT id FROM persons WHERE  first_name = 'tareq');
