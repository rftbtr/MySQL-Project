-- 3.   Calculate the average salary of all employees

--      Tüm çalışanların ortalama maaşını hesapla.

select * from employees.salaries;
select avg(salary) as averageSalary from employees.salaries;