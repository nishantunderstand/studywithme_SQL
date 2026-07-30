Top department by average salary

Window Function
Aggregate Function 

SELECT dept
FROM employee
GROUP BY dept
ORDER BY AVG(salary) DESC
LIMIT 1


select dept
FROM (
	SELECT 
		dept,	
		AVG(salary) AS avg_salary,
			DENSE_RANK() OVER (ORDER BY AVG(salary) DESC) as rnk
		FROM employee
		GROUP BY dept
) x
WHERE rnk=1;


AVG() is an aggregate function, and it is commonly used with GROUP BY.