use sql_pratice_2026;
-- Date: Oct 3, 2026 | Time: 12:04:41 PM | MYSQL 8.0+
/* Possible Approaches : 

*/
-- SQL Question : Find the 2nd highest salary.

-- SELECT DISTINCT salary FROM employee ORDER BY salary DESC OFFSET 1 LIMIT 1; SQL Version

SELECT DISTINCT salary FROM employee ORDER BY salary DESC LIMIT 1, 1;


SELECT MAX(salary) AS second_highest_salary  
FROM employee e 
WHERE e.salary < (
	SELECT MAX(salary) FROM employee
);