SELECT DISTINCT title
FROM titles;

SELECT last_name
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY last_name
ORDER BY last_name;

SELECT DISTINCT last_name, first_name
FROM employees
WHERE last_name LIKE 'e%e';

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND (last_name NOT LIKE '%qu%');


SELECT DISTINCT COUNT(last_name), last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND (last_name NOT LIKE '%qu%')
GROUP BY last_name;


SELECT COUNT(first_name), gender
FROM employees
WHERE first_name = 'irena'
   OR first_name = 'vidya'
   OR first_name = 'maya'
GROUP BY gender;








