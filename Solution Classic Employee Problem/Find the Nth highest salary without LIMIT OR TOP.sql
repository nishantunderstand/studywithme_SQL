use sql_pratice_2026;
-- Date: Oct 3, 2026 | Time: 11:31:36 PM | MYSQL 8.0+
-- SQL Question : Find the Nth highest salary without LIMIT OR TOP.


-- DENSE RANK is coming to my mind

SELECT * 
FROM 
(
	SELECT 
		e.*,
		DENSE_RANK() OVER(ORDER BY salary DESC ) AS rnk
		FROM employee e
) x
WHERE rnk=2;
  
