use sql_pratice_2026;
-- Date: Oct 5, 2026 | Time: 1:48:36 PM | MYSQL 8.0+
-- SQL Question : Finds Managers Who Have More Than One Employee.
SELECT * FROM employee;


-- finds managers who have more than one employee.


SELECT 
	manager_id,
	COUNT(*) AS cnt	
FROM employee
GROUP BY manager_id
HAVING COUNT(*)>1
;

