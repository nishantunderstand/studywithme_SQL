n-- Date: Jul 30, 2026 Time: 4:13:45 PM MYSQL 8.0+
-- SQL Question : Top 3 salaries by department

/* Possible Approaches : 
Group By Deparment , DESC , LIMIT 3

*/

SELECT * from employee;

-- SELECT  * FROM employee e GROUP BY e.department ;  
-- What is the issue in this line ?


-- SELECT e.salary FROM employee e GROUP BY e.department;
-- What is the issue in this line ?


-- SELECT e.department FROM employee e  GROUP BY e.department ORDER BY e.salary DESC LIMIT 3;
-- What is the issue in this line ?

-- Correct Syntax, But You solved the wrong Question
SELECT DISTINCT
	e.department ,
	MAX(e.salary) AS max_salary
FROM employee e
GROUP BY e.department 
ORDER BY max_salary DESC
LIMIT 3;

-- You Solved 3 departments whose highest salary is the greatest.

-- You need to print 3 Top Salary From each deparment 



-- -----------------------------------------------------------------


SELECT * FROM (	SELECT 	* ,	RANK() OVER (PARTITION BY department 	ORDER BY salary DESC) AS rnk	FROM employee ) t Where rnk <=3 ;

-- Why , is required Before RANK()























