use sql_pratice_2026;
-- Date: Oct 4, 2026 | Time: 11:17:13 PM | MYSQL 8.0+
-- SQL Question : Find the department with the highest average salary


-- Step 1: Find average salary of each department

SELECT 
	dept_id,
	AVG(salary)
FROM 
	employee
GROUP BY
	dept_id;


-- Step 2: Find the maximum average

-- Derived Table Or Inline table | VALID ANSWER 

SELECT MAX(avg_salary) FROM 
(
SELECT 
	dept_id,
	AVG(salary) as avg_salary
FROM 
	employee
GROUP BY
	dept_id
) t;




SELECT 
	dept_id,
	AVG(salary) AS avg_salary
FROM employee
GROUP BY dept_id
ORDER BY avg_salary DESC
LIMIT 1;






SELECT 
	dept_id,
	AVG(salary)  -- AVG(salary) IS THE NEW COLUMN NAME
FROM employee
GROUP BY dept_id
ORDER BY AVG(salary) DESC
LIMIT 1;







