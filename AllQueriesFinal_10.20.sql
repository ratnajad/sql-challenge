--1.
SELECT 
	e.emp_no, last_name, first_name, sex, salary
FROM
	employees as e
JOIN 
	salaries as s
ON
	e.emp_no = s.emp_no;
	
--2. 
SELECT
	first_name, last_name, hire_date
FROM
	employees
WHERE
	RIGHT(hire_date, 4) = '1986';
	
--3. List the manager of each department with the following information: 
	--department number, department name, the manager's employee number, last name, first name.
SELECT
	dm.dept_no, d.dept_name, dm.emp_no, last_name, first_name
FROM
	dept_manager as dm
JOIN
	departments as d
ON
	dm.dept_no = d.dept_no
JOIN
	employees as e
ON
	dm.emp_no = e.emp_no;

	
	
--4. List the department of each employee with the following information: 
	--employee number, last name, first name, and department name.
SELECT
	e.emp_no, e.last_name, e.first_name, d.dept_name
FROM
	dept_emp as de
JOIN
	departments as d
ON
	de.dept_no = d.dept_no
JOIN
	employees as e
ON
	e.emp_no = de.emp_no;
	
--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT
	first_name, last_name, sex
FROM 
	employees
WHERE
	first_name = 'Hercules' 
AND last_name SIMILAR TO 'B%';

--6. List all employees in the Sales department, including their employee number, last name, first name, 
	--and department name.
SELECT
	e.emp_no, e.last_name, e.first_name, d.dept_name
FROM
	dept_emp as de
JOIN
	departments as d
ON
	de.dept_no = d.dept_no
JOIN
	employees as e
ON
	e.emp_no = de.emp_no
WHERE
	dept_name = 'Sales';
	
--7. List all employees in the Sales and Development departments, including their employee number, 
	--last name, first name, and department name.
SELECT
	e.emp_no, e.last_name, e.first_name, d.dept_name
FROM
	dept_emp as de
JOIN
	departments as d
ON
	de.dept_no = d.dept_no
JOIN
	employees as e
ON
	e.emp_no = de.emp_no
WHERE
	dept_name = 'Development'
	OR dept_name = 'Sales';

--8. In descending order, list the frequency count of employee last names, i.e., 
	--how many employees share each last name.
SELECT
	last_name, COUNT(last_name) AS "Frequency Count"
FROM
	employees
Group By
	last_name
ORDER BY
	"Frequency Count" DESC;


	



