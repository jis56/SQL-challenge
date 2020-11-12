CREATE table departments(
	dept_no varchar not null,
	dept_name varchar not null
);

CREATE table dept_emp(
	emp_no int not null,
	dept_no varchar not null
);

CREATE table dept_manager(
	dept_no varchar not null,
	emp_no int not null
);

CREATE table employees(
	emp_no int not null,
	emp_title varchar not null,
	birth_date date not null,
	first_name varchar not null,
	last_name varchar not null,
	sex varchar not null,
	hire_date date not null
);

CREATE table salaries(
	emp_no int not null,
	salary int not null
);

CREATE table titles(
	title_id varchar not null,
	title varchar not null 
);

SELECT 
employees.emp_no, 
employees.last_name, 
employees.first_name, 
employees.sex, 
salaries.salary 
FROM employees
JOIN salaries ON 
employees.emp_no = salaries.emp_no;

SELECT 
first_name,
last_name,
hire_date
FROM employees
WHERE YEAR(hire_date) = "1986"

SELECT dept_no as "Department Number",
(SELECT dept_name
	FROM departments
	WHERE dept_manager.dept_no = departments.dept_no) as "Department Name",
(SELECT emp_no) as "Employee Number",
(SELECT last_name 
 	FROM employees
	WHERE dept_manager.emp_no = employees.emp_no) as "Last Name",
(SELECT first_name 
 	FROM employees
	WHERE dept_manager.emp_no = employees.emp_no) as "First Name"
FROM dept_manager



