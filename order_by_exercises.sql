SELECT *
FROM employees
WHERE gender = 'M'
  AND (first_name = 'irena' OR first_name = 'vidya' OR first_name = 'maya')
ORDER BY first_name;

SELECT *
FROM employees
WHERE first_name IN ('irena', 'vidya', 'maya')
ORDER BY first_name, last_name;

SELECT *
FROM employees
WHERE first_name IN ('irena', 'vidya', 'maya')
ORDER BY last_name, first_name;

SELECT *
FROM employees
WHERE last_name LIKE '%e%'
ORDER BY emp_no DESC;



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

