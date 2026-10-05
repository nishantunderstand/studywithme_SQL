use sql_pratice_2026;
-- Date: Oct 3, 2026 | Time: 11:09:45 PM | MYSQL 8.0+
-- SQL Question : Find employees who joined in the last 30 days.

SELECT * FROM employee WHERE joining_date >= '2026-09-03'; -- Ignore it.



SELECT * FROM employee WHERE  DATEDIFF(CURRENT_DATE,joining_date) BETWEEN 0 AND 30;
SELECT * FROM employee WHERE joining_date >= CURRENT_DATE - INTERVAL 30 DAY;