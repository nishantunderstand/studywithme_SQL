use sql_pratice_2026;

SELECT * FROM  
(
	SELECT *,
	DENSE_RANK() OVER(ORDER BY salary DESC) AS rnk
	FROM employee
) x
WHERE rnk =2;


TABLE 
DERIVED TABLE 

I am confuse about them  ??? #ExplainMe