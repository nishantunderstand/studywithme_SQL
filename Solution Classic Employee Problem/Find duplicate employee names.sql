use sql_pratice_2026;
-- Date: Oct 5, 2026 | Time: 1:40:23 PM | MYSQL 8.0+
-- SQL Question : Find duplicate employee names


SELECT
employee_name,
COUNT(*) AS cnt
FROM employee
GROUP BY employee_name
HAVING COUNT(*)>1;

