use sql_pratice_2026;
-- Date: Aug 30, 2026 | Time: 12:10:30 AM | MYSQL 8.0+
-- Table Schema : CREATE TABLE `employee` ( `employee_id` int NOT NULL AUTO_INCREMENT, `employee_name` varchar(100) NOT NULL, `salary` int NOT NULL, `dept_id` int NOT NULL, `manager_id` int DEFAULT NULL, PRIMARY KEY (`employee_id`), KEY `fk_employee_manager` (`manager_id`), CONSTRAINT `fk_employee_manager` FOREIGN KEY (`manager_id`) REFERENCES `employee` (`employee_id`) ) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/* Possible Approaches : 
GROUP By Deparmtment 

I need to pick 1 Item From Each GROUP 


Can we use subquery to solve this
*/
-- SQL Question : Top salary employee per department


SELECT * FROM (SELECT *,DENSE_RANK() OVER(PARTITION BY dept_id ORDER BY salary DESC) AS rnk FROM employee) x
WHERE rnk=1;



SELECT
    dept_id,
    MAX(salary) AS max_salary
FROM employee
GROUP BY dept_id;