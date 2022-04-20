SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'e%e'
ORDER BY emp_no DESC;

SELECT COUNT(*)
FROM employees
WHERE MONTH(birth_date) = 12
  AND DAY(birth_date) = 25;

DESC employees;

SELECT COUNT(*)
FROM employees
WHERE MONTH(birth_date) = 12
  AND DAY(birth_date) = 25
  AND hire_date LIKE '199%';

SELECT first_name, last_name
FROM employees
WHERE MONTH(birth_date) = 12
  AND DAY(birth_date) = 25
  AND hire_date LIKE '199%'
ORDER BY birth_date, hire_date DESC
LIMIT 1;

SELECT CONCAT('days at company: ', DATEDIFF(NOW(), hire_date)) AS 'days at company',
       CONCAT(first_name, ' ', last_name)                      AS 'name'
FROM employees
WHERE hire_date LIKE '199%'
  AND birth_date LIKE '%12-25'
ORDER BY birth_date ASC, hire_date DESC;
