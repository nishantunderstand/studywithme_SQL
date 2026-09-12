use sql_pratice_2026;
-- Date: Sep 3, 2026 | Time: 12:16:45 PM | MYSQL 8.0+
-- Table Schema : CREATE TABLE `employee` ( `employee_id` int NOT NULL AUTO_INCREMENT, `employee_name` varchar(100) NOT NULL, `salary` int NOT NULL, `dept_id` int NOT NULL, `manager_id` int DEFAULT NULL, PRIMARY KEY (`employee_id`), KEY `fk_employee_manager` (`manager_id`), CONSTRAINT `fk_employee_manager` FOREIGN KEY (`manager_id`) REFERENCES `employee` (`employee_id`) ) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/* Possible Approaches : 

*/
-- SQL Question : 
SELECT * FROM employee;


USE sql_pratice_2026;

INSERT INTO employee
    (employee_name, salary, dept_id, manager_id)
VALUES
    -- Top-level managers
    ('Amit',    120000, 10, NULL),
    ('Priya',   100000, 20, NULL),
    ('Rahul',   110000, 30, NULL),

    -- Employees reporting to Amit (ID = 128)
    ('Nishant', 130000, 10, 128),   -- earns MORE than Amit
    ('Ravi',     90000, 10, 128),   -- earns LESS than Amit
    ('Sneha',   125000, 10, 128),   -- earns MORE than Amit

    -- Employees reporting to Priya (ID = 129)
    ('Vikas',   105000, 20, 129),   -- earns MORE than Priya
    ('Neha',     80000, 20, 129),   -- earns LESS than Priya

    -- Employees reporting to Rahul (ID = 130)
    ('Karan',   115000, 30, 130),   -- earns MORE than Rahul
    ('Pooja',    95000, 30, 130);   -- earns LESS than Rahul