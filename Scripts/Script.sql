use sql_pratice_2026;
-- Date: Oct 5, 2026 | Time: 12:02:50 AM | MYSQL 8.0+
-- SQL Question : 


SELECT * FROM employee;
SELECT *, AVG(salary) FROM employee;
SELECT *, AVG(salary) AS avg_salary FROM employee;
SELECT *,AVG(salary) AS avg_salary FROM employee GROUP BY salary;
SELECT AVG(salary) FROM employee GROUP BY salary;
SELECT AVG(salary) AS avg_salary FROM employee GROUP BY salary;

