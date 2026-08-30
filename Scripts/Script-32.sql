use sql_pratice_2026;
-- Date: Aug 29, 2026 | Time: 9:43:24 PM | MYSQL 8.0+
-- Table Schema : CREATE TABLE `employee` ( `employee_id` int NOT NULL AUTO_INCREMENT, `employee_name` varchar(100) NOT NULL, `salary` int NOT NULL, `dept_id` int NOT NULL, `manager_id` int DEFAULT NULL, PRIMARY KEY (`employee_id`), KEY `fk_employee_manager` (`manager_id`), CONSTRAINT `fk_employee_manager` FOREIGN KEY (`manager_id`) REFERENCES `employee` (`employee_id`) ) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/* Possible Approaches : 

Group by deparment 
How to pick top 3 By Group
LIMIT 3 Per Group 

LIMIT Will be apply on whole result 
Not an indiviual Group level ?


Help me in BrainStorm 
*/
-- SQL Question : Top 3 Salaries by Department
SELECT * FROM employee;