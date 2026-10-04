-- Date: Jul 30, 2026 | Time: 6:53:22 PM | MYSQL 8.0+
-- SQL Question : Departments whose average salary > X

/* Possible Approaches : 



*/


SELECT * from employee; 


SELECT dept ,AVG(salary) AS avg_salary
from employee 
GROUP BY dept
HAVING AVG(salary)>10000;


-- Window Function TODO : Thursday, July 30, 2026 7:00:50 PM


select distinct dept 
from
(
	select dept,
	salary, 
	AVG(salary) OVER( PARTITION BY dept) as dep_avg_sal
	FROM employee
) x
where dep_avg_sal>given_amount_question




SELECT * FROM (SELECT *, DENSE_RANK() OVER(salary ORDER BY DESC) AS avg_salary FROM employee) t WHERE avg_salary>10000;




