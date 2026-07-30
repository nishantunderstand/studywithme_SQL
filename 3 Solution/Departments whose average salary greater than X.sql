Departments whose average salary > X

select distinct dept 
from
(
	select dept,
	salary, 
	AVG(salary) OVER( PARTITION BY dept) as dep_avg_sal
	FROM employee
) x
where dep_avg_sal>given_amount_question

---

select dept from
employee
group by dept
having AVG(salary) >x;