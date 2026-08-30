Find total salary based on department

select department, SUM(salary) AS total_salary
FROM employee
GROUP BY department;


---

SELECT department, total_salary
FROM (
    SELECT 
        department,
        SUM(salary) AS total_salary,
        DENSE_RANK() OVER (ORDER BY SUM(salary) DESC) AS rnk
    FROM Employee
    GROUP BY department
) x
WHERE rnk = 1;


==== WRONG CODE ====
select department, total_salary
from (
select department,
SUM(salary) AS total_salary,
DENSE_RANK() OVER (PARTITION BY department ORDER BY total_salary DESC) AS 
rnk
FROM employee
) x
WHERE rnk=1;

==== WRONG CODE ====