-- creating tables for all CSV files
-- building in drop table just to be sure table does not already exist
DROP TABLE employees;

CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title CHAR (5) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR (50) NOT NULL,
	last_name VARCHAR (50) NOT NULL,
	gender VARCHAR (50) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);

SELECT * FROM employees;


DROP TABLE departments;

CREATE TABLE departments (
	dept_no CHAR (4) NOT NULL,
	dept_name VARCHAR (50)NOT NULL,
	PRIMARY KEY (dept_no)
);

SELECT * FROM departments;

DROP TABLE dept_manager;

CREATE TABLE dept_manager (
	dept_no CHAR (4) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

SELECT * FROM dept_manager;

DROP TABLE dept_emp;

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no CHAR (4) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

SELECT * FROM dept_emp;

DROP TABLE titles;

CREATE TABLE titles (
	title_id CHAR (5) NOT NULL,
	title VARCHAR (30) NOT NULL
);

SELECT * FROM titles;

DROP TABLE salaries;

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	PRIMARY KEY (emp_no)
);

SELECT * FROM salaries;


