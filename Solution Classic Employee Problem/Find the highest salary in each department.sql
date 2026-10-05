use sql_pratice_2026;
-- Date: Oct 3, 2026 | Time: 6:25:06 PM | MYSQL 8.0+
/* Possible Approaches : 

*/
-- SQL Question Find the highest salary in each department: 

-- GROUP BY 
SELECT dept_id , MAX(salary) AS heighest_salary
FROM employee
GROUP BY dept_id;