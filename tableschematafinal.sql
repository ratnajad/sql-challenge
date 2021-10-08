CREATE TABLE departments (
	dept_no VARCHAR(30) NOT NULL,	
	dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE demp_emp (
	emp_no VARCHAR(30) NOT NULL,	
	dept_no VARCHAR(30) NOT NULL
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(30) NOT NULL,	
	emp_no VARCHAR(30) NOT NULL
);
	
CREATE TABLE employees (
	emp_no VARCHAR(30) NOT NULL,	
	emp_title_id VARCHAR(30) NOT NULL, 
	birth_date VARCHAR(30) NOT NULL, 
	first_name VARCHAR(30) NOT NULL, 
	last_name VARCHAR(30) NOT NULL, 
	sex VARCHAR(3) NOT NULL,
	hire_date VARCHAR(30) NOT NULL
);

CREATE TABLE salaries (
	emp_no VARCHAR(30) NOT NULL,	
	salary VARCHAR(30) NOT NULL
);

CREATE TABLE titles (
	title_id VARCHAR(30) NOT NULL,	
	title VARCHAR(30) NOT NULL
);