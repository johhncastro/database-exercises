SELECT CONCAT(first_name,' ', last_name)
FROM employees
WHERE last_name LIKE 'e%e'
ORDER BY emp_no DESC;

SELECT COUNT(*) FROM employees WHERE month(birth_date) = 12 AND day(birth_date) = 25;

DESC employees;

SELECT count(*) FROM employees WHERE month(birth_date) =12
AND  day(birth_date) = 25
AND hire_date like '199%';

SELECT first_name,last_name
FROM employees
WHERE month(birth_date)=12
AND day(birth_date)=25
AND hire_date like '199%'
ORDER BY birth_date,hire_date DESC
LIMIT 1;

SELECT concat('days at company: ',datediff(now(),hire_date))AS 'days at company',
       concat(first_name,' ',last_name) AS 'name'
from employees
WHERE hire_date like '199%'
AND birth_date like '%12-25'
ORDER BY birth_date ASC , hire_date DESC;
