Top 3 Salaries by Department
DENSE_RANK vs RANK vs ROW_NUMBER

Different Version Of :
DENSE_RANK ORDER BY
DENSE_RANK PARTITION BY ORDER BY


select dept,salary 
FROM 
(
	SELECT 
		dept,
		salary, 
		DENSE_RANK() OVER(
				PARTITION BY dept
				ORDER BY salary DESC
			) as rnk
	FROM employee
) x
WHERE rnk <=3


I need it for every department 