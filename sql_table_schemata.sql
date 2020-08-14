--creating blank tables so CSV files could be imported
CREATE TABLE departments(
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR
);

SELECT * FROM departments;

CREATE TABLE dept_emp(
	emp_no INT,
	foreign key (emp_no) references employees(emp_no),
	dept_no VARCHAR,
	foreign key (dept_no) references departments (dept_no)
);

SELECT * FROM dept_emp;

CREATE TABLE dept_manager(
	dept_no VARCHAR,
	foreign key (dept_no) references departments(dept_no),
	emp_no INT,
	foreign key (emp_no) references employees (emp_no)
);

SELECT * FROM dept_manager;

CREATE TABLE employees(
	emp_no INT PRIMARY KEY,
	emp_tit VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE
);

SELECT * FROM employees;

CREATE TABLE salaries(
	emp_no INT,
	foreign key (emp_no) references employees(emp_no),
	salary INT
);

SELECT * FROM salaries;

CREATE TABLE titles(
	title_id VARCHAR,
	title VARCHAR
);

SELECT * FROM titles;
