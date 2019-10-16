--Question 1
SELECT "Employees".emp_no, "Employees".last_name, "Employees".first_name, "Employees".gender, "Salaries".salary
FROM "Salaries"
INNER JOIN "Employees" ON 
"Employees".emp_no = "Salaries".emp_no;


--Question 2
SELECT * FROM "Employees"
WHERE hire_date LIKE '1986%';


--Question 3
SELECT "Departments".dept_no, "Departments".dept_name, "Dept_Manager".emp_no, "Employees".last_name, "Employees".first_name, "Dept_Manager".from_date, "Dept_Manager".to_date
FROM "Departments"
INNER JOIN "Dept_Manager" ON
"Dept_Manager".dept_no = "Departments".dept_no
JOIN "Employees" ON
"Employees".emp_no = "Dept_Manager".emp_no;


--Question 4
SELECT "Employees".emp_no, "Employees".last_name, "Employees".first_name, "Departments".dept_name
FROM "Employees"
INNER JOIN "Dept_Emp" ON
"Employees".emp_no = "Dept_Emp".emp_no
INNER JOIN "Departments" ON 
"Departments".dept_no = "Dept_Emp".dept_no;


--Question 5
SELECT * from "Employees"
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';


--Question 6
SELECT "Employees".emp_no, "Employees".last_name, "Employees".first_name, "Departments".dept_name
FROM "Employees"
INNER JOIN "Dept_Emp" ON
"Employees".emp_no = "Dept_Emp".emp_no
INNER JOIN "Departments" ON 
"Departments".dept_no = "Dept_Emp".dept_no
WHERE "Departments".dept_name = 'Sales';


--Question 7
SELECT "Employees".emp_no, "Employees".last_name, "Employees".first_name, "Departments".dept_name
FROM "Employees"
INNER JOIN "Dept_Emp" ON
"Employees".emp_no = "Dept_Emp".emp_no
INNER JOIN "Departments" ON 
"Departments".dept_no = "Dept_Emp".dept_no
WHERE "Departments".dept_name = 'Sales'
OR "Departments".dept_name = 'Development';


--Question 8
SELECT last_name, COUNT(last_name) AS frequency
FROM "Employees"
GROUP BY last_name
ORDER BY frequency DESC;




