use sql_pratice_2026;
-- Date: Oct 3, 2026 | Time: 6:28:36 PM | MYSQL 8.0+
/* Possible Approaches : 

*/
-- SQL Question Find the top 3 salaries in each department.:

-- GROUP BY  | Reason : It combine the result 
SELECT dept_id,MAX(salary) AS salary FROM employee
GROUP BY dept_id
ORDER BY 
dept_id ASC,
salary DESC ;


-- MAX() → gives only the highest salary,
-- not the top 3 salaries.
-- Can we solve by GROUP ? NOOOOOOO


-- Approach 2: DENSE_RANK()
SELECT * FROM 
(
	SELECT 
		e.*,
		DENSE_RANK() OVER(PARTITION BY dept_id ORDER BY salary DESC) AS rnk
		FROM employee e
) x
WHERE rnk<=3
ORDER BY dept_id ASC, salary DESC; 