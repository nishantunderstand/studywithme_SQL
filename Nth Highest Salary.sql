Nth Highest Salary



2nd Highest Salary
SELECT MAX(salary)
FROM employee
WHERE employee.salary< (SELECT MAX(salary) FROM employee)

---

How to find Nth Highest Salary ?

- Nested SubQuery Worst Approach

- Window Function Approach
SELECT salary
FROM 
(
SELECT salary,
DENSE_RANK() OVER (ORDER BY salary DESC) as rnk 
FROM employee
)x
where rnk = N
	
	
---

OFFSET APPROACH

SELECT DISTINCT salary
FROM employee
ORDER BY salary DESC
LIMIT 1 OFFSET N-1;	