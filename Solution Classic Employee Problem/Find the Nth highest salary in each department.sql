use sql_pratice_2026;
-- Date: Oct 5, 2026 | Time: 2:46:08 PM | MYSQL 8.0+
-- SQL Question : Find the Nth highest salary in each department


SELECT * FROM (
	SELECT 
		e.*,
		DENSE_RANK() OVER(PARTITION BY dept_id ORDER BY salary DESC) AS rnk
		FROM employee e
) x 
WHERE rnk = 2;

