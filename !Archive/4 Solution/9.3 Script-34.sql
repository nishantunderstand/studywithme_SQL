use sql_pratice_2026;
-- Date: Aug 30, 2026 | Time: 12:00:03 AM | MYSQL 8.0+
-- Table Schema : CREATE TABLE `employee` ( `employee_id` int NOT NULL AUTO_INCREMENT, `employee_name` varchar(100) NOT NULL, `salary` int NOT NULL, `dept_id` int NOT NULL, `manager_id` int DEFAULT NULL, PRIMARY KEY (`employee_id`), KEY `fk_employee_manager` (`manager_id`), CONSTRAINT `fk_employee_manager` FOREIGN KEY (`manager_id`) REFERENCES `employee` (`employee_id`) ) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/* Possible Approaches : 

*/
-- SQL Question : 9.3 Find departments having more than 3 and an average salary greater than 70,000.

SELECT 
dept_id,
AVG(salary) AS avg_salary
FROM employee
GROUP BY dept_id
HAVING COUNT(*)>3 AND AVG(salary)>70000
ORDER BY avg_salary DESC;