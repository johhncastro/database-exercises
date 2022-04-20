SELECT *
FROM employees
WHERE gender = 'M'
  AND (first_name = 'irena' OR first_name = 'vidya' OR first_name = 'maya');



SELECT *
FROM employees
WHERE last_name LIKE ('E%');

SELECT *
FROM employees
WHERE last_name LIKE ('%q%');

SELECT *
FROM employees
WHERE last_name LIKE ('E%')
   OR last_name LIKE ('%E');

SELECT *
FROM employees
WHERE last_name LIKE ('E%')
  AND last_name LIKE ('%E');

SELECT *
FROM employees
WHERE last_name LIKE '%q%'
  AND (last_name NOT LIKE '%qu%');

