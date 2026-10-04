use sql_pratice_2026;
-- Date: Sep 3, 2026 | Time: 12:10:46 PM | MYSQL 8.0+
-- Table Schema : CREATE TABLE `employee` ( `employee_id` int NOT NULL AUTO_INCREMENT, `employee_name` varchar(100) NOT NULL, `salary` int NOT NULL, `dept_id` int NOT NULL, `manager_id` int DEFAULT NULL, PRIMARY KEY (`employee_id`), KEY `fk_employee_manager` (`manager_id`), CONSTRAINT `fk_employee_manager` FOREIGN KEY (`manager_id`) REFERENCES `employee` (`employee_id`) ) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/* Possible Approaches : 

*/

-- SQL Question : 
-- Find employees earning more than their manager.
-- Employee and Manager Are in 
-- same table or  : Inner Join
-- different Table. => Join Table, Then check whose salary is greater than other 


SELECT
e.employee_name AS EMP_NAME ,
e.salary AS EMP_SALARY,
m.employee_name AS MANAGER_NAME,
m.salary AS Manager_SALARY
FROM employee e
INNER JOIN employee m
ON e.manager_id = m.employee_id
WHERE e.salary > m.salary;

