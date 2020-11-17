SELECT 
employees.emp_no as "Employee Number", 
employees.last_name as "Last Name", 
employees.first_name as "First Name", 
employees.sex as "Sex", 
salaries.salary as "Salary" 
FROM employees
JOIN salaries ON 
employees.emp_no = salaries.emp_no;

SELECT 
first_name as "First Name",
last_name as "Last Name",
hire_date as "Hire Date"
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

SELECT
m.dept_no as "Department Number",
d.dept_name as "Department Name",
m.emp_no as "Employee Number",
e.last_name as "Last Name",
e.first_name as "First Name"
FROM dept_manager m
JOIN departments d on m.dept_no = d.dept_no
JOIN employees e on m.emp_no=e.emp_no;

SELECT
e.emp_no as "Employee Number",
e.last_name as "Last Name",
e.first_name as "First Name",
d.dept_name as "Departments"
FROM employees e
JOIN dept_emp de on e.emp_no=de.emp_no
JOIN departments d on d.dept_no=de.dept_no;

SELECT
first_name, 
last_name, 
sex 
FROM employees
	WHERE first_name = 'Hercules' AND last_name LIKE 'B%';
	
SELECT
e.emp_no as "Employee Number",
e.last_name as "Last Name",
e.first_name as "First Name",
d.dept_name as "Departments"
FROM employees e
JOIN dept_emp de on e.emp_no=de.emp_no
JOIN departments d on d.dept_no=de.dept_no
	WHERE dept_name='Sales';
	
SELECT
e.emp_no as "Employee Number",
e.last_name as "Last Name",
e.first_name as "First Name",
d.dept_name as "Departments"
FROM employees e
JOIN dept_emp de on e.emp_no=de.emp_no
JOIN departments d on d.dept_no=de.dept_no
	WHERE dept_name='Sales' OR dept_name='Development';

SELECT
last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;