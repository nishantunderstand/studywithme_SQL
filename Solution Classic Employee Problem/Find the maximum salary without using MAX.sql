use sql_pratice_2026;
-- Date: Oct 3, 2026 | Time: 11:30:15 PM | MYSQL 8.0+
-- SQL Question : Find the maximum salary without using MAX

SELECT DISTINCT * FROM employee
ORDER BY salary DESC
LIMIT 1;