use sql_pratice_2026;
-- Date: Oct 3, 2026 | Time: 6:18:58 PM | MYSQL 8.0+
/* Possible Approaches : 

*/
-- SQL Question Find the Nth highest salary: 


SELECT * FROM (
	SELECT 
	e.*, 
	RANK() OVER(ORDER BY salary DESC) AS rnk  -- Remember it
	FROM employee e 
) x -- This is Important  
WHERE rnk=2;