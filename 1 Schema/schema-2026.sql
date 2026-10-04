-- Practice schema for Studywithme_SQL exercises (MySQL)
-- Modeled on the sakila-schema.sql / sakila-data.sql split:
--   schema.sql      -> DDL only
--   sample-data.sql -> seed data used to verify the queries in this repo
--
-- Run this file first, then sample-data.sql.

CREATE DATABASE IF NOT EXISTS sql_pratice_2026;
USE sql_pratice_2026;

DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS department;
DROP TABLE IF EXISTS users;

CREATE TABLE department (
    dept_id   INT AUTO_INCREMENT PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL
) ENGINE=InnoDB;

-- dept / department / dept_id / employee_name are redundant column names
-- (different .sql files in this repo used different naming) kept side by
-- side so every query in the repo runs unmodified against this one table.
-- dept_id intentionally has NO foreign key constraint, so a row can point
-- at a dept_id that doesn't exist in `department` -- needed to demonstrate
-- "Employees not in Department Table.sql".
CREATE TABLE employee (
    id            INT AUTO_INCREMENT PRIMARY KEY,
    name          VARCHAR(100) NOT NULL,
    employee_name VARCHAR(100) NOT NULL,
    dept          VARCHAR(100) NOT NULL,
    department    VARCHAR(100) NOT NULL,
    dept_id       INT NOT NULL,
    salary        INT NOT NULL
) ENGINE=InnoDB;

CREATE TABLE users (
    id    INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL
) ENGINE=InnoDB;



-- 



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




---


CREATE TABLE department (
    dept_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(100) NOT NULL,
    email VARCHAR(100)
);


INSERT INTO department
(dept_id, dept_name, email)
VALUES
(1, 'IT', 'it@company.com'),
(2, 'HR', 'hr@company.com'),
(3, 'Finance', 'finance@company.com'),
(4, 'Sales', 'sales@company.com'),
(5, 'Marketing', 'marketing@company.com');
