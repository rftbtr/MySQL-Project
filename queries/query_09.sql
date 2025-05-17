-- 9. Calculate the average salary for each department, including department names

-- Departman adlarını da içeren her departmanın ortalama maaşını hesapla.

use employees;
select * from employees.salaries;
select * from employees;

select d.dept_name, avg(s.salary) as averageSalary from employees.salaries s
join employees.dept_emp de on s.emp_no=de.emp_no
join employees.departments d on de.dept_no=d.dept_no
group by d.dept_name;