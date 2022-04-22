use employees;
SELECT d.dept_name ,CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees AS e
         JOIN dept_manager AS dm
              ON dm.emp_no = e.emp_no
         JOIN departments AS d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name;

USE employees;

# SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
# FROM employees as e
#          JOIN dept_emp as de
#               ON de.emp_no = e.emp_no
#          JOIN departments as d
#               ON d.dept_no = de.dept_no
# WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

SELECT d.dept_name ,CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees AS e
         JOIN dept_manager AS dm
              ON dm.emp_no = e.emp_no
         JOIN departments AS d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name;

SELECT d.dept_name ,CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees AS e
         JOIN dept_manager AS dm
              ON dm.emp_no = e.emp_no
         JOIN departments AS d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F';

SELECT title, COUNT(title) AS Total
FROM titles t JOIN dept_emp de ON t.emp_no = de.emp_no
WHERE dept_no = 'd009' AND t.to_date LIKE '9%'
  AND de.to_date LIKE '9%'
GROUP BY title;

SELECT d.dept_name ,CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees AS e
         JOIN dept_manager AS dm
              ON dm.emp_no = e.emp_no
         JOIN departments AS d
              ON d.dept_no = dm.dept_no
         JOIN salaries s ON e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date LIKE '9999-01-01'
ORDER BY d.dept_name;