-- table schema

create table departments (
    dept_no varchar(4)   not null,
    dept_name varchar(30)   not null,
    primary key (dept_no)
);

create table dept_emp (
    emp_no integer not null,
    dept_no varchar(5) not null
);


create table dept_manager (
    dept_no varchar(4) not null,
    emp_no int not null
);

create table employees (
    emp_no int not null,
	emp_title_id varchar(5) not null,
    birth_date date not null,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    sex varchar(10) not null,
    hire_date date not null
);

create table salaries (
    emp_no int not null,
	salary int not null
);

create table titles (
    title_id varchar(5) not null,
	title varchar(30) not null
);






