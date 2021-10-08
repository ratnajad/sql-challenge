--1.
SELECT 
	emp_no, last_name, first_name, sex
FROM
	employees;
	
--2. 
SELECT
	first_name, last_name, hire_date
FROM
	employees
WHERE
	hire_date = '1986';
	
--3. List the manager of each department with the following information: 
	--department number, department name, the manager's employee number, last name, first name.
SELECT
	dept_no, dept_name, first_name, last_name, emp_no
FROM
	titles, employees, departments
WHERE
	title_id = ('m0001')
	
--4. List the department of each employee with the following information: 
	--employee number, last name, first name, and department name.
SELECT
	emp_no, last_name, first_name, dept_name
FROM
	employees, departments
GROUP BY
	emp_no, last_name, first_name, dept_name;
	
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
	emp_no, last_name, first_name, dept_name
FROM 
	employees, departments
WHERE
	dept_name = 'Sales';
	
--7. List all employees in the Sales and Development departments, including their employee number, 
	--last name, first name, and department name.
SELECT
	emp_no, last_name, first_name, dept_name
FROM
	employees, departments
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


	



