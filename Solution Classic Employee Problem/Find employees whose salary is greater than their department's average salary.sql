use sql_pratice_2026;
-- Date: Oct 5, 2026 | Time: 2:20:23 PM | MYSQL 8.0+
-- SQL Question : Find employees whose salary is greater than their department's average salary
SELECT * FROM employee;


-- 🚫 SELECT * FROM employee WHERE salary > (	SELECT AVG(salary) AS salary FROM employee GROUP BY salary);



SELECT * FROM employee e
WHERE e.salary > (
	SELECT AVG(e2.salary)
	FROM employee e2
	WHERE e2.dept_id = e.dept_id
);