
-- Find all the current employees with the same hire date as employee 101010 using a sub-query.
--
select * from employees 
where hire_date=(select hire_date from employees where emp_no=101010);
-- Find all the titles ever held by all current employees with the first name Aamod.
--
select * from titles
join employees
using (emp_no)
where first_name in (select first_name from employees where first_name='Aamod')and to_date>now();
;
-- How many people in the employees table are no longer working for the company? Give the answer in a comment in your code.
--
select count(*) as "not here anymore" from employees
where emp_no not in (SELECT emp_no FROM salaries WHERE to_date > NOW());
-- Find all the current department managers that are female. List their names in a comment in your code.
--
select first_name,last_name as 'full name',gender from employees
where emp_no in(SELECT emp_no FROM dept_manager dm WHERE dm.to_date > NOW() AND gender = 'F');
-- Find all the employees who currently have a higher salary than the companies overall, historical average salary.
select * from employees 
join salaries
using (emp_no)
where to_date>now()and salary >= (select round(avg(salary)) from salaries);
-- How many current salaries are within 1 standard deviation of the current highest salary? (Hint: you can use a built in function to calculate the standard deviation.) What percentage of all salaries is this?
select * from employees 
join salaries
using (emp_no)
where to_date>now() and salary+(select std(salary) from salaries)>(select max(salary) from salaries);
 select max(salary) from salaries;
 select std(salary) from salaries;
-- Hint You will likely use multiple subqueries in a variety of ways
-- Hint It's a good practice to write out all of the small queries that you can. Add a comment above the query 
-- showing the number of rows returned. You will use this number (or the query that produced it) in other, larger queries.
-- Find all the department names that currently have female managers.
select concat(first_name,'',last_name) as 'full name',gender,dept_name as 'department' from employees
join dept_manager
using (emp_no)
join departments
using (dept_no)
where emp_no in(SELECT emp_no FROM dept_manager dm WHERE dm.to_date > NOW() AND gender = 'F');
-- Find the first and last name of the employee with the highest salary.
select concat(first_name,' ',last_name)as 'full_name',salary from employees
join salaries 
using (emp_no)
where (SELECT s.emp_no FROM salaries s ORDER BY s.salary DESC LIMIT 1)AND s.to_date > NOW();
        


