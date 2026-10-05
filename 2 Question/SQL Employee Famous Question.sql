### SQL Employee — Interview Revision

Last Synced : 2026/10/05

Delete duplicate records while keeping one record.
Find departments having more than 5 employees, with department name.
Find duplicate employee names.
Find duplicate records.
Find duplicate salaries.
Find employees having the same department and salary.
Find employees having the same manager.
Find employees who don't have a manager.
Find employees who earn more than their manager.
Find employees who joined before their manager.
Find employees who joined in the last 30 days.
Find employees whose salary is greater than the average salary.
Find employees whose salary is greater than their department's average salary.
Find employees with the same salary.
Find managers managing more than 5 employees. 
Find the 2nd highest salary in each department.
Find the 2nd highest salary.
Find the Nth highest salary in each department.
Find the Nth highest salary without LIMIT/TOP.
Find the Nth highest salary.
Find the department with the highest average salary.
Find the highest salary in each department.
Find the maximum salary without using MAX().
Find the salary difference between employee and manager.
Find the second highest salary in each department.
Find the top 3 salaries in each department.
Finds Managers Who Have More Than One Employee.

### 🎯 Pattern coverage

Salary / Ranking
├── 2nd highest
├── Nth highest
├── Nth highest without LIMIT
├── Top N per department
└── Nth highest per department

GROUP BY / HAVING
├── Duplicate records
├── Duplicate salary
├── Same dept + salary
├── > 5 employees
└── Highest average salary

SELF JOIN
├── Employee > Manager
├── Joined before Manager
├── Same Manager
└── Salary difference

DATE
└── Joined in last 30 days

DUPLICATES
├── Find duplicates
└── Delete duplicates

### Create And Pratice it.


sql
CREATE DATABASE IF NOT EXISTS sql_pratice_2026;
USE sql_pratice_2026;

DROP TABLE IF EXISTS employee;

CREATE TABLE employee (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    salary INT,
    dept_id INT,
    manager_id INT,
    joining_date DATE
);

INSERT INTO employee
(employee_id, employee_name, salary, dept_id, manager_id, joining_date)
VALUES
(1,  'Amit',    100000, 10, NULL, '2020-01-10'),
(2,  'Rahul',    80000, 10, 1,    '2021-03-15'),
(3,  'Priya',    80000, 10, 1,    '2022-06-20'),
(4,  'Neha',     70000, 20, NULL, '2020-05-12'),
(5,  'Vikas',    60000, 20, 4,    '2023-02-10'),
(6,  'Sneha',    50000, 20, 4,    '2024-01-05'),
(7,  'Arjun',    90000, 30, NULL, '2021-07-18'),
(8,  'Karan',    75000, 30, 7,    '2025-09-10'),
(9,  'Pooja',    75000, 30, 7,    '2026-09-20'),
(10, 'Amit',     60000, 20, 4,    '2026-09-25');
