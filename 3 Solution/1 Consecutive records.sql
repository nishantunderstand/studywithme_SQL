-- Date: Jul 30, 2026 | Time: 6:02:01 PM | MYSQL 8.0+
-- SQL Question : Consecutive records


/* Possible Approaches : 

I need some kind of sorting
Our Goal is to compare to items

*/


SELECT *, LAG(email) OVER(ORDER BY id) FROM users;
SELECT *, LEAD(email) OVER(ORDER BY id) FROM users;


SELECT 
*,
LAG(salary) OVER(ORDER BY employee_id) AS previous_salary,
salary - LAG(salary) OVER(ORDER BY employee_id) AS salary_difference
FROM employee;
