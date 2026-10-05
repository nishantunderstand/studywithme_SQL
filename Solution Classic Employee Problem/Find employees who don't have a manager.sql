use sql_pratice_2026;
-- Date: Oct 3, 2026 | Time: 9:30:39 PM | MYSQL 8.0+
-- SQL Question : Find employees who don't have a manager
SELECT * FROM employee;

-- Simplest Approach 
SELECT *
FROM employee
WHERE manager_id IS NULL;

-- JOIN Approcah

SELECT * 
FROM employee e 
LEFT JOIN employee m -- Why Left Join ?
ON e.manager_id = m.employee_id
WHERE e.manager_id IS NULL;
