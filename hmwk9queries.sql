--1. List the following details of each employee: employee number, last name, 
--first name, gender, and salary.

SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees AS e
INNER JOIN salaries AS s 
ON e.emp_no = s.emp_no;

--2. List employees who were hired in 1986.

SELECT *
FROM employees
WHERE hire_date BETWEEN '1986-1-1' AND '1986-12-31'
ORDER BY hire_date;


--3. List the manager of each department with the following information: 
--department number, department name, the manager's employee number, 
--last name, first name, and start and end employment dates.

SELECT m.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name, m.from_date, m.to_date
FROM manager AS m
INNER JOIN department AS d
ON m.dept_no = d.dept_no
INNER JOIN employees AS e
ON e.emp_no = m.emp_no;


--4. List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

SELECT  e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN department_employee AS de
ON e.emp_no = de.emp_no
INNER JOIN department AS d
ON d.dept_no = de.dept_no;

--5. List all employees whose first name is "Hercules" and last names begin with "B."

SELECT e.first_name, e.last_name
FROM employees AS e
WHERE e.first_name = 'Hercules' AND e.last_name LIKE '%B%';

--6. List all employees in the Sales department, including their employee number,
--last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN department_employee AS de
ON e.emp_no = de.emp_no
INNER JOIN department AS d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';


--7. List all employees in the Sales and Development departments,
--including their employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN department_employee AS de
ON e.emp_no = de.emp_no
INNER JOIN department AS d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'; 


--8. In descending order, list the frequency count of employee last names,
--i.e., how many employees share each last name.

SELECT e.last_name, COUNT(e.last_name)
FROM employees AS e
GROUP BY e.last_name
ORDER BY COUNT(e.last_name) DESC;


