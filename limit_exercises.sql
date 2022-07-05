-- example SELECT DISTINCT title FROM titles;
show databases;use employees;SELECT distinct * FROM employees order by last_name desc;
-- names (lansing,elvis,van,achilleas,macha,mari,chinya,hongzhu,branimir,Haslsur)
show databases;use employees;SELECT * FROM employees where hire_date between '1990-01-01' and '1999-12-31' and birth_date like '%-12-25' 
order by hire_date asc limit 5;
-- names (Cappello,Alselm),(Mandell,Utz),(Schreiter,Bouchung),(Kushner,Baocai),(Stroustrup,Petter)
show databases;use employees;SELECT * FROM employees where hire_date between '1990-01-01' and '1999-12-31' and birth_date like '%-12-25' 
order by hire_date asc limit 5 offset 45;
-- i offset it by 45 cause each page has 5 people and we skip 45 people to get to page tenth


