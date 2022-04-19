SELECT *
from employees
WHERE gender = 'M'
and(first_name = 'irena'or first_name = 'vidya' or first_name = 'maya');



SELECT * FROM employees WHERE last_name like ('E%');
SELECT * FROM employees WHERE last_name LIKE  ('%q%');

SELECT * FROM employees WHERE last_name LIKE ('E%') OR last_name LIKE ('%E');

SELECT * FROM employees WHERE last_name LIKE ('E%') AND last_name LIKE ('%E');

SELECT * FROM employees WHERE last_name LIKE '%q%' AND (last_name not like '%qu%');

