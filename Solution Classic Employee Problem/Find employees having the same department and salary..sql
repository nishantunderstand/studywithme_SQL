use sql_pratice_2026;
-- Date: Oct 5, 2026 | Time: 12:21:06 AM | MYSQL 8.0+
-- SQL Question : Find employees having the same department and salary.



SELECT * FROM employee;


-- JOIN 

SELECT 
	e1.employee_id,
	e1.employee_name,
	e1.salary,
	e2.employee_id,
	e2.employee_name,
	e2.salary
FROM employee e1
JOIN employee e2 
ON e1.dept_id = e2.dept_id 
AND e1.salary = e2.salary
AND e1.employee_id <> e2.employee_id -- CAN WE USE DISTINCT ??
ORDER BY e1.employee_name;


-- Should we use DISTINCT ?