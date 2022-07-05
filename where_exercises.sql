show databases;use employees;SELECT * FROM employees WHERE first_name in ( 'Irena' , 'Vidya' , 'Maya'); 
-- number of total- 709 names 
show databases;use employees;SELECT * FROM employees WHERE first_name='Irena' or first_name='Vidya' or first_name='maya';
-- total number- 709 names 
show databases;use employees;SELECT * FROM employees WHERE gender='M' and first_name='Irena' or first_name='Vidya' or first_name='maya';
-- total number 612 names 
show databases;use employees;SELECT * FROM employees where last_name like 'E%';
-- total- 7,330 name that start with e
show databases;use employees;SELECT * FROM employees where last_name like 'E%'or last_name like '%E';
-- total- 30,723 name that begin with e and end with e
show databases;use employees;SELECT * FROM employees where last_name like 'E%'and last_name like '%E';
-- total -899 names that being with e and end with e 
show databases;use employees;SELECT * FROM employees where hire_date between '1990-01-01' and '1999-12-31';
-- hire date between 90s total number 135,214
show databases;use employees;select * from employees where birth_date like '%-12-25';
-- employees born on chrismas 842
show databases;use employees;SELECT * FROM employees where hire_date between '1990-01-01' and '1999-12-31' and birth_date like '%-12-25';
-- number 362 names hired between the 90s and born on chrismas 
show databases;use employees;SELECT * FROM employees where last_name like '%q%';
-- names with q in there names total 1873
show databases;use employees;SELECT * FROM employees where last_name like '%q%'and last_name not like '%qu%';
-- total -547 names with q but not qu 






