-- 5. Calculate the average salary of all employees with gender "F"

-- "Kadın" cinsiyetindeki tüm çalışanların ortalama maaşını hesapla.

select * from employees.salaries;
select * from employees;
select avg(s.salary) as averageSalaryWomen from employees.employees e
join employees.salaries s on e.emp_no=s.emp_no
where e.gender='F';