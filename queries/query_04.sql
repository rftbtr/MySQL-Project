-- 4. Calculate the average salary of all employees with gender "M"

-- "Erkek" cinsiyetindeki tüm çalışanların ortalama maaşını hesapla.

select * from employees.salaries;
select * from employees;
select avg(s.salary) as averageSalaryMan from employees.employees e
join employees.salaries s on e.emp_no=s.emp_no
where e.gender='M';