select distinct * from titles;
-- unique titles total- 443,308 
SELECT last_name FROM employees where last_name like 'e%e' group by last_name;
-- 5 names 
SELECT DISTINCT last_name,first_name FROM employees WHERE last_name LIKE 'e%e' GROUP BY last_name , first_name;
-- 
SELECT last_name FROM employees where last_name like '%q%'and last_name not like '%qu%' group by last_name;
-- chleq,lindqvist,quiwen
SELECT last_name, COUNT(last_name)FROM employees where last_name like '%q%'and last_name not like '%qu%' group by last_name;
-- chleq189,lindqvist190,quiwen168
SELECT count(gender),gender FROM employees WHERE first_name in ( 'Irena' , 'Vidya' , 'Maya') group by gender,first_name;
-- 
SELECT CONCAT(SUBSTR(LOWER(first_name), 1, 1), 
SUBSTR(LOWER(last_name), 1, 4), "_", 
SUBSTR(birth_date, 6, 2), SUBSTR(birth_date, 3, 2)) 
AS username, count(*) as duplicate_names FROM employees group by username;
--
select * from salaries;
select avg(salary),emp_no as employeers ,count(*) as people_ from salaries group by emp_no;
-- 
show tables;
select * from dept_emp;
SELECT dept_no as 'department',count(dept_no)as 'total employers' from dept_emp group by dept_no;
-- 
-- Determine how many different salaries each employee has had. This includes both historic and current.
show tables;
select * from salaries;
select max(salary)as 'end salary ',min(salary)as 'begin salary',emp_no as employeers ,count(*) as 'history' from salaries group by emp_no;
-- 
-- Find the maximum salary for each employee.
select max(salary)as 'end salary ',emp_no as employeers from salaries group by emp_no;
--
-- Find the minimum salary for each employee.
select min(salary)as 'end salary ',emp_no as employeers from salaries group by emp_no;
--
-- Find the standard deviation of salaries for each employee.
select std(salary)as 'standard deviation ',emp_no as employeers ,count(*) as 'history' from salaries group by emp_no;
--
-- Now find the max salary for each employee where that max salary is greater than $150,000
select max(salary)as 'end salary ',emp_no as employeers from salaries group by emp_no having 'end salary' > 150000;
--
-- Find the average salary for each employee where that average salary is between $80k and $90k.
select avg(salary),emp_no as employeers ,count(*) as people_ from salaries where salary between 80000 and 90000 group by emp_no;





