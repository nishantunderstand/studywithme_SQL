use sql_pratice_2026;
-- Date: Oct 3, 2026 | Time: 9:21:55 PM | MYSQL 8.0+
-- SQL Question : Find employees with the same salary.


-- Thinking of Self Join

SELECT 
	e1.employee_name,
	e1.salary,
	e2.employee_name,
	e2.salary
FROM 
	employee e1 
JOIN employee e2 
ON e1.salary = e2.salary -- Why on salary ? || Whyn't on ID ?
WHERE e1.employee_id > e2.employee_id; -- To Mantain Uniquness
