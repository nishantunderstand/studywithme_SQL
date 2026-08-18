Show avg salary for every department


WINDOW FUNCTION

SELECT DISTINCT dept,avg_salary
FROM (
	SELECT dept,
	AVG(salary) OVER (PARTITION BY DEPT) as avg_salary
	FROM employee
) x ;


AGGREGATE FUNCTION

SELECT dept,AVG(salary) as avg_salary
FROM employee
GROUP BY dept;