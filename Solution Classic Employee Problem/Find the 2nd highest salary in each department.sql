use sql_pratice_2026;
-- Date: Oct 5, 2026 | Time: 2:43:42 PM | MYSQL 8.0+
-- SQL Question : Find the 2nd highest salary in each department
-- Thinking of DENSE RANK And Partition 


SELECT * FROM (
	SELECT 
		e.*,
		DENSE_RANK() OVER(PARTITION BY dept_id ORDER BY salary DESC ) AS rnk
		FROM employee e
) x
WHERE rnk=2
