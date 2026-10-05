use sql_pratice_2026;
-- Date: Oct 5, 2026 | Time: 2:57:08 PM | MYSQL 8.0+
-- SQL Question : Find the salary difference between employee and manager.
SELECT * FROM employee;


-- Thinking of Join 

SELECT 
	e.salary ,
	m.salary ,
	(e.salary - m.salary) AS diff
FROM employee e
JOIN employee m
ON e.manager_id = m.employee_id;



SELECT 
	e.salary as emp_salary,
	m.salary as manager_salary,
	ABS(e.salary - m.salary) AS diff
FROM employee e
JOIN employee m
ON e.manager_id = m.employee_id;