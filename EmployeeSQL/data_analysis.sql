-- Data Analysis

-- 1. List the following details of each employee: employee number, last name, 
	--first name, sex, and salary.
	
select employees.emp_no, employees.last_name, employees.first_name,
		employees.sex, salaries.salary
from employees
inner join salaries
on employees.emp_no = salaries.emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.

select employees.first_name, employees.last_name, employees.hire_date
from employees
where employees.hire_date > '1985-12-31' and employees.hire_date < '1987-01-01';

-- 3. List the manager of each department with the following information: department number, 
	-- department name, the manager's employee number, last name, first name.

select dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, 
		employees.last_name, employees.first_name
from dept_manager
inner join departments
on departments.dept_no = dept_manager.dept_no
inner join employees
on dept_manager.emp_no = employees.emp_no;

-- 4. List the department of each employee with the following information: employee number, 
	-- last name, first name, and department name.

select employees.emp_no, employees.last_name, employees.first_name,
		departments.dept_name
from employees
inner join dept_emp 
on dept_emp.emp_no = employees.emp_no
inner join departments
on dept_emp.dept_no = departments.dept_no;

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" 
	-- and last names begin with "B."
	
select employees.first_name, employees.last_name, employees.sex
from employees
where employees.first_name = 'Hercules' and employees.last_name like 'B%';

-- 6. List all employees in the Sales department, including their employee number, 
	-- last name, first name, and department name.

select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
inner join dept_emp
on dept_emp.emp_no = employees.emp_no
inner join departments 
on departments.dept_no = dept_emp.dept_no
where departments.dept_name like 'Sale%';

-- 7. List all employees in the Sales and Development departments, 
	-- including their employee number, last name, first name, and department name.
	



















