use sql_pratice_2026;
-- Date: Aug 30, 2026 | Time: 12:47:45 AM | MYSQL 8.0+
/* Possible Approaches : 

*/
-- SQL Question : 11. Display the name of each manager and the name of the employees working under that manager.

SELECT 
e.employee_name AS Employee,
m.employee_name AS Manager
FROM employee e
JOIN employee m
ON m.employee_id = e.manager_id; ---