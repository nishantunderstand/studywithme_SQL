use sql_pratice_2026;
-- Date: Oct 3, 2026 | Time: 11:34:54 PM | MYSQL 8.0+
-- SQL Question : Find duplicate salaries. 

SELECT salary FROM employee GROUP BY salary HAVING COUNT(*)>1;


SELECT * FROM employee 
WHERE salary IN (
	SELECT salary FROM employee GROUP BY salary HAVING COUNT(*)>1
);