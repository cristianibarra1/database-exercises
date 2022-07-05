show databases;use employees;SELECT * FROM employees WHERE first_name in ( 'Irena' , 'Vidya' , 'Maya')order by first_name asc;
-- first person name (reutenauer, irena) last person name (Vidya, Simmen)
show databases;use employees;SELECT * FROM employees WHERE first_name in ( 'Irena' , 'Vidya' , 'Maya')order by first_name,last_name asc;
-- first person name (Acton, Irena)last person name (Vidya Zweizig)
show databases;use employees;SELECT * FROM employees WHERE first_name in ( 'Irena' , 'Vidya' , 'Maya')order by last_name,first_name asc;
-- first person name (Acton, Irena) last person name (Zyda, Maya)
show databases;use employees;select * from employees where last_name like '%e' and last_name like 'e%' order by emp_no asc;
-- first name (Erde, Ramzi) last name (Erde, Tadahiro) total 899
show databases;use employees;select * from employees where last_name like '%e' and last_name like 'e%' order by hire_date desc;
-- first name (Eldridge, Teiji) last name (Erde, Sergi) total 899
show databases;use employees;SELECT * FROM employees where hire_date between '1990-01-01' and '1999-12-31' and birth_date like '%-12-25' 
order by hire_date asc;
-- first name (Cappello, Alselm) last person (Bernini,Khun) total 362





