use sql_pratice_2026;
-- Date: Aug 29, 2026 | Time: 9:50:15 PM | MYSQL 8.0+
-- Table Schema : CREATE TABLE `employee` ( `employee_id` int NOT NULL AUTO_INCREMENT, `employee_name` varchar(100) NOT NULL, `salary` int NOT NULL, `dept_id` int NOT NULL, `manager_id` int DEFAULT NULL, PRIMARY KEY (`employee_id`), KEY `fk_employee_manager` (`manager_id`), CONSTRAINT `fk_employee_manager` FOREIGN KEY (`manager_id`) REFERENCES `employee` (`employee_id`) ) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/* Possible Approaches : 
Calculate the average salary
Then find which dept is having salary greater than avg

Thinking 

GROUP BY dept_id AVG(salary)
Then we can use HAVING BY 
I need to perform operation after Performing Group

*/
-- SQL Question : 9. Top department by average salary

-- SubQuery Approach

SELECT 
dept_id,
AVG(salary) AS avg_salary -- How can we use this alias for sorting , as we have just created ??
FROM employee
GROUP BY dept_id
ORDER BY avg_salary DESC
LIMIT 1;