-- 18. List the names, last names, and hire dates in alphabetical order of all employees hired before
--  January 01, 1990.

--- 1990-01-01 tarihinden önce işe alınan tüm çalışanların adlarını, soyadlarını ve işe alınma
--  tarihlerini alfabetik sırayla listele.

select * from employees.employees;

select first_name, last_name, hire_date from employees.employees
where hire_date < '1990-01-01'
order by first_name, last_name;