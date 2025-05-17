-- 19. List the names, last names, hire dates of all employees hired between January 01, 1985 and
--  December 31, 1989, sorted by hire date.

--  1985-01-01 ile 1989-12-31 tarihleri arasında işe alınan tüm çalışanların adlarını, soyadlarını ve işe
--  alınma tarihlerini işe alınma tarihine göre sıralı olarak listele.

select * from employees.employees;

select first_name, last_name, hire_date from employees.employees
where hire_date between '1985-01-01' and '1989-12-31'
order by hire_date;