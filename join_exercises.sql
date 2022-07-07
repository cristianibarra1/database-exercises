SELECT dept_name AS 'Department Name',CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'FROM departments d 
JOIN dept_manager dm ON d.dept_no = dm.dept_no 
JOIN employees e ON dm.emp_no = e.emp_no 
WHERE dm.to_date > NOW();
--
--
SELECT dept_name AS 'Department Name',CONCAT(e.first_name, ' ', e.last_name) AS 'Female Manager'FROM departments d 
JOIN dept_manager dm ON d.dept_no = dm.dept_no 
JOIN employees e ON dm.emp_no = e.emp_no 
WHERE dm.to_date > NOW()and gender like '%F%';
-- Find the current titles of employees currently working in the Customer Service department.
--
SELECT t.title AS 'Title', COUNT(*)as 'count' FROM titles t 
JOIN dept_emp de ON t.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Customer Service'AND de.to_date > NOW()AND t.to_date > NOW() GROUP BY t.title;
--
-- Find the current salary of all current managers.
SELECT dept_name AS 'Department Name',CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager',s.salary as 'salary' FROM departments d 
JOIN dept_manager dm ON d.dept_no = dm.dept_no 
JOIN employees e ON dm.emp_no = e.emp_no 
join salaries s on dm.emp_no = s.emp_no 
WHERE s.to_date >= NOW() AND dm.to_date >=NOW();
--  Find the number of current employees in each department.
--
SELECT d.dept_no AS 'dept_no',d.dept_name AS 'dept_name',COUNT(*) AS 'num_employees'FROM departments AS d 
JOIN dept_emp de 
ON de.dept_no = d.dept_no WHERE de.to_date > NOW()GROUP BY d.dept_name, d.dept_no ORDER BY d.dept_no;
--
--
SELECT dept_name AS 'Department Name',avg(s.salary) as salary from departments d 
join dept_emp de on d.dept_no= de.dept_no
join salaries s on de.emp_no=s.emp_no
WHERE de.to_date > NOW() AND s.to_date > NOW()GROUP BY d.dept_name ORDER BY AVG(s.salary) DESC LIMIT 1;
-- Who is the highest paid employee in the Marketing department?
--
SELECT e.first_name, e.last_name FROM departments d
JOIN dept_emp de ON d.dept_no = de.dept_no
JOIN employees e ON de.emp_no = e.emp_no
JOIN salaries s ON e.emp_no = s.emp_no
WHERE d.dept_name = 'Marketing' AND de.to_date > NOW()AND s.to_date > NOW()ORDER BY s.salary desc LIMIT 1;
-- Which current department manager has the highest salary?
--
select e.first_name,e.last_name,s.salary,d.dept_name from departments d
JOIN dept_manager de ON d.dept_no = de.dept_no
JOIN employees e ON de.emp_no = e.emp_no
JOIN salaries s ON e.emp_no = s.emp_no
where e.first_name='Vishwani' and de.to_date > NOW()AND s.to_date > NOW()ORDER BY s.salary ;
-- Determine the average salary for each department. Use all salary information and round your results.
--
SELECT dept_name AS 'Department Name',avg(s.salary) as salary from departments d 
join dept_emp de on d.dept_no= de.dept_no
join salaries s on de.emp_no=s.emp_no
GROUP BY d.dept_name ORDER BY AVG(s.salary);
--
-- learning more 
SELECT dept_name AS 'Department Name',CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager' FROM departments d 
JOIN dept_manager dm ON d.dept_no = dm.dept_no 
JOIN employees e ON dm.emp_no = e.emp_no 
where dm.to_date > NOW() and gender like '%f%';