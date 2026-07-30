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
