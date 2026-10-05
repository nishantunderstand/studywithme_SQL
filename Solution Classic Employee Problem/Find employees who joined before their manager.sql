use sql_pratice_2026;
-- Date: Oct 5, 2026 | Time: 1:56:03 PM | MYSQL 8.0+
-- SQL Question : Find employees who joined before their manager.


SELECT 
	e.employee_name,
	e.joining_date,
	m.employee_name,
	m.joining_date
FROM employee e
JOIN employee m
ON e.manager_id = m.employee_id
WHERE e.joining_date < m.joining_date;



-- JOIN