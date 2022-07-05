SELECT CONCAT(first_name ," ", last_name) as full_name from employees where last_name like '%e' and last_name like  'e%';
--  right 
SELECT CONCAT(upper(first_name) ," ", upper(last_name)) as full_name from employees where last_name like '%e' and last_name like  'e%';
-- right
SELECT DATEDIFF(now(), hire_date) AS working_days, CONCAT(first_name, ' ', last_name) AS full_name FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date LIKE '%-12-25';
-- right 
use salaries ;
select * from salaries ;
select max(salary) as highest , min(salary) as lowest from salaries;
-- right and annoying 
SELECT CONCAT(SUBSTR(LOWER(first_name), 1, 1), SUBSTR(LOWER(last_name), 1, 4), "_", SUBSTR(birth_date, 6, 2), SUBSTR(birth_date, 3, 2)) AS username FROM employees;
-- i dont wanna struggle no more

