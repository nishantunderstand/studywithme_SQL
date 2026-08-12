-- Date: Jul 30, 2026 | Time: 7:01:02 PM | MYSQL 8.0+
-- SQL Question : Employees earning more than department average 

/* Possible Approaches : 

	Solved By Group By having clause

*/


SELECT * FROM employee;
SELECT AVG(salary) FROM employee; -- 79428.6071

SELECT * FROM employee e Where salary>(SELECT AVG(salary) FROM employee WHERE dept = e.dept );






-- Will Group Approach Work or not ?? If Not Why ?
SELECT * FROM employee
GROUP BY department
HAVING AVG(salary);


-- Do i need SubQuery Approach ??



-- window function


select name from
(
		select name,dept,salary,AVG(salary) OVER(PARTITION BY dept) AS dept_avg FROM employee
) x
where salary>dept_avg
