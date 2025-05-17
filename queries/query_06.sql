-- 6. List all employees in the "Sales" department with a salary greater than 70,000.

-- Maaşı 70.000'den yüksek olan "Satış" departmanındaki tüm çalışanları listele.

select * from employees;
select * from employees.departments;
select * from employees.dept_emp;

select e.emp_no, e.first_name, e.last_name, d.dept_name, s.salary
from employees.employees e
join employees.dept_emp de on e.emp_no=de.emp_no
join employees.departments d on de.dept_no=d.dept_no
join employees.salaries s on e.emp_no=s.emp_no
where d.dept_no='d007' and s.salary>70000;