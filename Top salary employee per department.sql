Top salary employee per department


select salary, department 
from(
select department, salary,
DENSE_RANK() OVER(
  PARTITION BY department
  ORDER BY salary DESC
) AS rnk
FROM employee
) x
WHERE rnk=1;