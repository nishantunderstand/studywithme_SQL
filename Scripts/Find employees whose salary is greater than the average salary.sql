use sql_pratice_2026;
-- Date: Oct 3, 2026 | Time: 6:36:19 PM | MYSQL 8.0+
/* Possible Approaches : 

*/
-- SQL Question Find employees whose salary is greater than the average salary: 


SELECT * FROM employee
WHERE salary > (
	SELECT AVG(salary)
	FROM employee
);