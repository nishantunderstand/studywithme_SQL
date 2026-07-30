Employees earning more than department average

window function


select name from
(
		select name,dept,salary,AVG(salary) OVER(PARTITION BY dept) AS dept_avg FROM employee
) x
where salary>dept_avg
