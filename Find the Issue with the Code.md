-- Find the Issue | Win the Prize | New Job | New salary


SELECT * FROM employee;
SELECT *, AVG(salary) FROM employee;
SELECT *, AVG(salary) AS avg_salary FROM employee;
SELECT *,AVG(salary) AS avg_salary FROM employee GROUP BY salary;
SELECT AVG(salary) AS avg_salary FROM employee GROUP BY salary;

SELECT * FROM employee;
SELECT *, AVG(salary) FROM employee;
SELECT *, AVG(salary) AS avg_salary FROM employee;
SELECT *,AVG(salary) AS avg_salary FROM employee GROUP BY salary;
SELECT AVG(salary) FROM employee GROUP BY salary;
SELECT AVG(salary) AS avg_salary FROM employee GROUP BY salary;

