SELECT * FROM employees;

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
JOIN salaries AS s ON
s.emp_no = e.emp_no;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

SELECT d.dept_no, n.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees AS e
JOIN dept_manager AS d ON
d.emp_no = e.emp_no
JOIN departments AS n ON
n.dept_no = d.dept_no;

SELECT   e.emp_no, e.last_name, e.first_name, n.dept_name
FROM employees AS e
JOIN dept_emp AS d ON
d.emp_no = e.emp_no
JOIN departments AS n ON
n.dept_no = d.dept_no;

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT   e.emp_no, e.last_name, e.first_name, n.dept_name
FROM employees AS e
JOIN dept_emp AS d ON
d.emp_no = e.emp_no
JOIN departments AS n ON
n.dept_no = d.dept_no
WHERE n.dept_name = 'Sales';

SELECT   e.emp_no, e.last_name, e.first_name, n.dept_name
FROM employees AS e
JOIN dept_emp AS d ON
d.emp_no = e.emp_no
JOIN departments AS n ON
n.dept_no = d.dept_no
WHERE n.dept_name = 'Sales' OR n.dept_name = 'Development';

SELECT last_name, COUNT(last_name) AS "Number of People Employed with the Last Name"
FROM employees
GROUP BY last_name
ORDER BY "Number of People Employed with the Last Name" DESC;