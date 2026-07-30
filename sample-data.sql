-- Seed data for schema.sql
-- Same dataset used to verify every query in this repo:
--   Eng:   90000, 80000, 80000 (tie)      -> avg 83333.33
--   Sales: 60000, 70000, 50000            -> avg 60000
--   HR:    40000, 40000 (tie)             -> avg 40000
-- department table deliberately has no row for dept_id 3 (HR),
-- so Grace/Heidi are the expected result of the "not in department" queries.

USE sql_pratice_2026;

INSERT INTO department (dept_id, dept_name) VALUES
    (1, 'Engineering'),
    (2, 'Sales');

INSERT INTO employee (id, name, employee_name, dept, department, dept_id, salary) VALUES
    (1, 'Alice', 'Alice', 'Eng',   'Eng',   1, 90000),
    (2, 'Bob',   'Bob',   'Eng',   'Eng',   1, 80000),
    (3, 'Carol', 'Carol', 'Eng',   'Eng',   1, 80000),
    (4, 'Dave',  'Dave',  'Sales', 'Sales', 2, 60000),
    (5, 'Eve',   'Eve',   'Sales', 'Sales', 2, 70000),
    (6, 'Frank', 'Frank', 'Sales', 'Sales', 2, 50000),
    (7, 'Grace', 'Grace', 'HR',    'HR',    3, 40000),
    (8, 'Heidi', 'Heidi', 'HR',    'HR',    3, 40000);

INSERT INTO users (id, email) VALUES
    (1, 'a@x.com'),
    (2, 'b@x.com'),
    (3, 'a@x.com'),
    (4, 'c@x.com'),
    (5, 'a@x.com');
