use sql_pratice_2026;
-- Date: Oct 3, 2026 | Time: 9:12:44 PM | MYSQL 8.0+
-- SQL Question : Find departments having more than 5 employees.

SELECT * FROM employee;

SELECT dept_id,COUNT(*) AS cnt FROM employee GROUP BY dept_id HAVING COUNT(*)>5; -- 1,2,3,4,5,6

-- If I need to display name as well ?


-- SELECT dept_id,employee_name FROM employee GROUP BY dept_id HAVING COUNT(*)>5;  
-- What is the issue with this line of code ?
-- So MySQL with ONLY_FULL_GROUP_BY enabled will reject it.


SELECT * FROM employee
WHERE dept_id IN (
	SELECT dept_id FROM employee GROUP BY dept_id HAVING COUNT(*)>5
) ORDER BY dept_id;
