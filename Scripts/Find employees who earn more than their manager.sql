use sql_pratice_2026;
-- Date: Oct 3, 2026 | Time: 8:26:35 PM | MYSQL 8.0+
/* Possible Approaches : 

*/
-- SQL Question : Find employees who earn more than their manager

SELECT 
e.employee_name,
e.salary
FROM employee e
JOIN employee m
ON m.employee_id = e.manager_id
WHERE e.salary > m.salary
