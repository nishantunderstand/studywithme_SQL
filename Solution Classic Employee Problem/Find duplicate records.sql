use sql_pratice_2026;
-- Date: Oct 3, 2026 | Time: 11:26:20 PM | MYSQL 8.0+
-- SQL Question :  3. Find duplicate records.

SELECT * FROM employee;
-- How do you define duplicate record 
-- Suppose for sake I consider employee_name


SELECT e1.*
FROM employee e1 
JOIN employee e2
ON e1.employee_name = e2.employee_name
WHERE e1.employee_id != e2.employee_id;