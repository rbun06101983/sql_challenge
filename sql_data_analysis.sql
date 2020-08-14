--Data Analysis
--1.) List the following detail of each employee: employee number, last name, first name, sex, salary
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from salaries
inner join employees on
employees.emp_no=salaries.emp_no;

--2.) List the first name, last name and hire date for employees who were hired in 1986
SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
where hire_date BETWEEN '01-01-1986' and '01-01-1987';

--3.) List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
from departments
inner join dept_manager on
departments.dept_no=dept_manager.dept_no
inner join employees on
dept_manager.emp_no=employees.emp_no;

--4.)List the department of each employee with the following information: employee number, last name, first name, and department name.
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
inner join employees on
dept_emp.emp_no=employees.emp_no
inner join departments on
dept_emp.dept_no=departments.dept_no;

--5) List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select employees.first_name, employees.last_name, employees.sex
from employees
where first_name='Hercules'
and last_name like'B%';

--6) List all employees in the Sales department, including their employee number, last name, first name, and department name
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
join employees on
dept_emp.emp_no=employees.emp_no
join departments on
dept_emp.dept_no=departments.dept_no
where departments.dept_name='Sales';

--7) List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
join employees on
dept_emp.emp_no=employees.emp_no
join departments on
dept_emp.dept_no=departments.dept_no
where departments.dept_name='Sales'
or departments.dept_name='Development';

--8) In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select employees.last_name, count(last_name) as frequency
from employees
GROUP BY last_name
order by "frequency" DESC;