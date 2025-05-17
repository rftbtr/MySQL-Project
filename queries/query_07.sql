-- 7. This query retrieves employees who have salaries between 50000 and 100000.

-- Bu sorgu, maaşı 50.000 ile 100.000 arasında olan çalışanları getirir.

select * from employees;
select * from employees.departments;
select * from employees.dept_emp;

select e.emp_no, e.first_name, e.last_name, d.dept_name, s.salary
from employees.employees e
join employees.dept_emp de on e.emp_no=de.emp_no
join employees.departments d on de.dept_no=d.dept_no
join employees.salaries s on e.emp_no=s.emp_no
where s.salary between 50000 and 100000;