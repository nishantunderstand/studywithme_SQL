-- sql_pratice_2026.employee definition

CREATE TABLE `employee` (
  `employee_id` int NOT NULL AUTO_INCREMENT,
  `employee_name` varchar(100) NOT NULL,
  `salary` int NOT NULL,
  `dept_id` int NOT NULL,
  `manager_id` int DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `fk_employee_manager` (`manager_id`),
  CONSTRAINT `fk_employee_manager` FOREIGN KEY (`manager_id`) REFERENCES `employee` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


---


INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(2, 'Alice', 90000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(53, 'Alice', 80000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(54, 'Alice', 80000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(60, 'Alice', 80000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(61, 'Alice', 80000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(67, 'Alice', 80000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(68, 'Alice', 80000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(74, 'Alice', 80000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(75, 'Alice', 80000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(81, 'Alice', 80000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(82, 'Alice', 80000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(88, 'Alice', 80000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(89, 'Alice', 80000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(95, 'Alice', 80000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(96, 'Alice', 80000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(102, 'Alice', 80000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(103, 'Alice', 80000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(109, 'Alice', 80000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(110, 'Alice', 80000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(116, 'Alice', 80000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(117, 'Alice', 80000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(123, 'Alice', 80000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(124, 'Alice', 80000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(27, 'Andrew', 105000, 4, NULL);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(44, 'Anna', 82000, 6, 43);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(28, 'Bella', 88000, 4, 27);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(3, 'Bob', 85000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(45, 'Brian', 78000, 6, 43);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(46, 'Catherine', 70000, 6, 44);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(29, 'Chris', 82000, 4, 27);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(47, 'Daniel', 68000, 6, 44);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(4, 'David', 75000, 1, 2);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(30, 'Diana', 76000, 4, 28);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(55, 'DuplicateEmployee', 60000, 2, 11);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(56, 'DuplicateEmployee', 60000, 2, 11);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(57, 'DuplicateEmployee', 60000, 2, 11);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(62, 'DuplicateEmployee', 60000, 2, 11);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(63, 'DuplicateEmployee', 60000, 2, 11);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(64, 'DuplicateEmployee', 60000, 2, 11);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(69, 'DuplicateEmployee', 60000, 2, 11);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(70, 'DuplicateEmployee', 60000, 2, 11);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(71, 'DuplicateEmployee', 60000, 2, 11);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(76, 'DuplicateEmployee', 60000, 2, 11);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(77, 'DuplicateEmployee', 60000, 2, 11);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(78, 'DuplicateEmployee', 60000, 2, 11);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(83, 'DuplicateEmployee', 60000, 2, 11);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(84, 'DuplicateEmployee', 60000, 2, 11);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(85, 'DuplicateEmployee', 60000, 2, 11);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(90, 'DuplicateEmployee', 60000, 2, 11);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(91, 'DuplicateEmployee', 60000, 2, 11);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(92, 'DuplicateEmployee', 60000, 2, 11);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(97, 'DuplicateEmployee', 60000, 2, 11);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(98, 'DuplicateEmployee', 60000, 2, 11);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(99, 'DuplicateEmployee', 60000, 2, 11);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(104, 'DuplicateEmployee', 60000, 2, 11);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(105, 'DuplicateEmployee', 60000, 2, 11);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(106, 'DuplicateEmployee', 60000, 2, 11);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(111, 'DuplicateEmployee', 60000, 2, 11);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(112, 'DuplicateEmployee', 60000, 2, 11);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(113, 'DuplicateEmployee', 60000, 2, 11);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(118, 'DuplicateEmployee', 60000, 2, 11);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(119, 'DuplicateEmployee', 60000, 2, 11);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(120, 'DuplicateEmployee', 60000, 2, 11);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(125, 'DuplicateEmployee', 60000, 2, 11);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(126, 'DuplicateEmployee', 60000, 2, 11);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(127, 'DuplicateEmployee', 60000, 2, 11);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(48, 'Elena', 64000, 6, 45);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(5, 'Emma', 70000, 1, 2);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(31, 'Ethan', 70000, 4, 28);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(32, 'Fiona', 68000, 4, 29);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(6, 'Frank', 65000, 1, 3);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(49, 'Fred', 60000, 6, 45);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(33, 'George', 64000, 4, 29);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(50, 'Gina', 55000, 6, 46);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(7, 'Grace', 62000, 1, 3);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(34, 'Hannah', 60000, 4, 30);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(8, 'Henry', 58000, 1, 4);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(9, 'Ivy', 55000, 1, 4);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(10, 'Jack', 52000, 1, 5);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(1, 'John', 120000, 1, NULL);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(51, 'John', 70000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(52, 'John', 70000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(58, 'John', 70000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(59, 'John', 70000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(65, 'John', 70000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(66, 'John', 70000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(72, 'John', 70000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(73, 'John', 70000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(79, 'John', 70000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(80, 'John', 70000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(86, 'John', 70000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(87, 'John', 70000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(93, 'John', 70000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(94, 'John', 70000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(100, 'John', 70000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(101, 'John', 70000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(107, 'John', 70000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(108, 'John', 70000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(114, 'John', 70000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(115, 'John', 70000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(121, 'John', 70000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(122, 'John', 70000, 1, 1);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(11, 'Kevin', 95000, 2, NULL);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(12, 'Laura', 75000, 2, 11);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(43, 'Michael', 98000, 6, NULL);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(13, 'Mike', 70000, 2, 11);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(14, 'Nancy', 65000, 2, 12);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(15, 'Oscar', 60000, 2, 12);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(16, 'Paul', 58000, 2, 13);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(17, 'Quinn', 55000, 2, 13);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(18, 'Rachel', 52000, 2, 14);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(35, 'Robert', 100000, 5, NULL);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(36, 'Sarah', 85000, 5, 35);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(19, 'Steve', 110000, 3, NULL);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(20, 'Tina', 90000, 3, 19);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(37, 'Tom', 80000, 5, 35);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(21, 'Uma', 85000, 3, 19);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(38, 'Ursula', 72000, 5, 36);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(22, 'Victor', 78000, 3, 20);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(40, 'Violet', 65000, 5, 37);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(41, 'Walter', 62000, 5, 37);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(23, 'Wendy', 72000, 3, 20);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(39, 'William', 68000, 5, 36);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(24, 'Xavier', 68000, 3, 21);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(25, 'Yara', 65000, 3, 21);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(42, 'Yvonne', 58000, 5, 38);
INSERT INTO sql_pratice_2026.employee (employee_id, employee_name, salary, dept_id, manager_id) VALUES(26, 'Zack', 60000, 3, 22);




---



ALTER TABLE employee
ADD joining_date DATE;

INSERT INTO employee
(employee_id, employee_name, salary, dept_id, manager_id, joining_date)
VALUES
(200, 'John',    90000, 1, NULL, '2026-01-10'),
(201, 'Alice',   85000, 1, 200,  '2026-08-15'),
(202, 'Bob',     75000, 2, NULL, '2026-09-01'),
(203, 'Charlie', 70000, 2, 202,  '2026-09-05'),
(204, 'David',   65000, 2, 202,  '2026-09-20'),
(205, 'Emma',    95000, 3, NULL, '2026-09-25'),
(206, 'Frank',   80000, 3, 205,  '2026-09-28'),
(207, 'Grace',   60000, 3, 205,  '2026-10-01'),
(208, 'Henry',   55000, 4, NULL, '2026-10-02'),
(209, 'Ivy',     50000, 4, 208,  '2026-10-03');


