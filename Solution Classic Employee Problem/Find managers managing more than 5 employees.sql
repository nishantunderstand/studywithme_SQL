use sql_pratice_2026;
-- Date: Oct 5, 2026 | Time: 2:31:59 PM | MYSQL 8.0+
-- SQL Question : Find managers managing more than 5 employees
SELECT * FROM employee;


SELECT 
	manager_id,
	COUNT(*) AS cnt 
FROM employee 
GROUP BY manager_id
HAVING COUNT(*)>5;