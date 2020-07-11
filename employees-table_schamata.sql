-- -- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- -- The code QuickDBD produced had some issues generating improper constraints.
-- -- This code was modified from what was generated out of QuickDBD.

-- CREATE TABLES & IMPORT CSV

DROP TABLE employees;
CREATE TABLE employees (
	emp_no INT             NOT NULL,
	birth_date DATE        NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30)  NOT NULL,
	gender VARCHAR(30)     NOT NULL,
	hire_date DATE         NOT NULL,
    CONSTRAINT pk_employees 
		PRIMARY KEY (emp_no)
);
SELECT * FROM employees;

-- 

DROP TABLE   departments
CREATE TABLE departments (
	dept_no VARCHAR(30)   NOT NULL,
	dept_name VARCHAR(30) NOT NULL,
    CONSTRAINT pk_departments
		PRIMARY KEY (dept_no)
);
SELECT * FROM departments;

-- 

DROP TABLE   dept_emp;
CREATE TABLE dept_emp (
	emp_no    INT     NOT NULL,
	dept_no   VARCHAR NOT NULL,
	from_date DATE    NOT NULL,
	to_date   DATE    NOT NULL,
	FOREIGN KEY (emp_no)  REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);
SELECT * FROM dept_emp;

--

DROP TABLE   dept_manager;
CREATE TABLE dept_manager (
	dept_no   VARCHAR NOT NULL,
	emp_no    INT     NOT NULL,
	from_date DATE    NOT NULL,
	to_date   DATE    NOT NULL,
	FOREIGN KEY (emp_no)  REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);
SELECT * FROM dept_manager;

--

DROP TABLE   titles;
CREATE TABLE titles (
	emp_no    INT         NOT NULL,
	title     VARCHAR(30) NOT NULL,
	from_date DATE        NOT NULL,
	to_date   DATE        NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no)
);
SELECT * FROM titles;

--

DROP TABLE   salaries;
CREATE TABLE salaries (
	emp_no    INT  NOT NULL,
	salary    INT  NOT NULL,
	from_date DATE NOT NULL,
	to_date   DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);
SELECT * FROM salaries;

