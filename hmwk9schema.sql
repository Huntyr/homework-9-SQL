--create some table to add data to
CREATE TABLE employees(
	emp_no INTEGER PRIMARY KEY,
	birth_date date,
	first_name VARCHAR,
	last_name VARCHAR,
	gender VARCHAR,
	hire_date date
);
-- see your work
SELECT * FROM employees;

--drop table to remake the employees table if necessary
DROP TABLE employees;

CREATE TABLE department_employee(
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR NOT NULL,
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES department (dept_no)
);
-- continue creating tables
CREATE TABLE department(
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR
);


CREATE TABLE title(
	emp_no INTEGER,
	title VARCHAR,
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

CREATE TABLE manager(
	dept_no VARCHAR,
	emp_no INTEGER,
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (dept_no) REFERENCES department (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

--last table
CREATE TABLE salaries (
	emp_no INTEGER,
	salary INTEGER,
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);