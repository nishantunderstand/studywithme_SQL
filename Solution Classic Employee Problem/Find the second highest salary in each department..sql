use sql_pratice_2026;
-- Date: Oct 3, 2026 | Time: 11:06:41 PM | MYSQL 8.0+
-- SQL Question : Find the second highest salary in each department.

SELECT * FROM employee ;



SELECT * 
FROM (
	SELECT 
		e.*,
		DENSE_RANK() OVER(PARTITION BY dept_id ORDER BY salary DESC) AS rnk 
		FROM employee e
) x
WHERE rnk=2;

