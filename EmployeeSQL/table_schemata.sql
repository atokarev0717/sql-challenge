drop table if exists departments;
drop table if exists dept_emp;
drop table if exists dept_manager;
drop table if exists employees;
drop table if exists salaries;
drop table if exists titles;


-- table schema

create table departments (
    dept_no varchar(4) not null,
    dept_name varchar(30) not null,
    primary key (dept_no)
);

create table employees (
    emp_no int not null,
	emp_title_id varchar(5) not null,
    birth_date date not null,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    sex varchar(10) not null,
    hire_date date not null,
	primary key (emp_no)
);

create table titles (
    title_id varchar(5) not null,
	title varchar(30) not null,
	primary key (title_id)
);


create table dept_emp (
    emp_no integer not null,
    dept_no varchar(5) not null,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);


create table dept_manager (
    dept_no varchar(4) not null,
    emp_no int not null,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);


create table salaries (
    emp_no int not null,
	salary int not null,
	foreign key (emp_no) references employees(emp_no)
);







