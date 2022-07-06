SHOW DATABASES;
USE employees;
SHOW TABLES;
SELECT * FROM employees LIMIT 5;
 SHOW CREATE TABLE employees;
 -- Use the employees database. Write the SQL code necessary to do this. CREATE TABLE `employees` (
 -- `emp_no` int NOT NULL,
  -- `birth_date` date NOT NULL,
  -- `first_name` varchar(14) NOT NULL,
  -- `last_name` varchar(16) NOT NULL,
 --  `gender` enum('M','F') NOT NULL,
  -- `hire_date` date NOT NULL,
  -- PRIMARY KEY (`emp_no`)
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1
-- Which table(s) do you think contain a numeric type column
show databases;
use numbers;
show tables;
select * from numbers limit 15;
-- Which table(s) do you think contain a string type column
-- employees
select * from storytype limit 15;
-- What is the relationship between the employees and the departments tables
use employees;
show tables;

-- Show the SQL that created the dept_manager table. Write the SQL it takes to show this as your exercise solution.
SHOW CREATE TABLE dept_manager;
-- dept_manager, CREATE TABLE `dept_manager` (
--  `emp_no` int NOT NULL,
--  `dept_no` char(4) NOT NULL,
--  `from_date` date NOT NULL,
--  `to_date` date NOT NULL,
--  PRIMARY KEY (`emp_no`,`dept_no`),
--  KEY `dept_no` (`dept_no`),
--  CONSTRAINT `dept_manager_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON DELETE CASCADE ON UPDATE RESTRICT,
--  CONSTRAINT `dept_manager_ibfk_2` FOREIGN KEY (`dept_no`) REFERENCES `departments` (`dept_no`) ON DELETE CASCADE ON UPDATE RESTRICT
-- )-- ENGINE=InnoDB DEFAULT CHARSET=latin1

