-- 1.   List all employees in department D001.

--  D001 departmanındaki tüm çalışanları listele.

select * from employees;
select * from employees.departments;
select * from employees.dept_emp;

select e.emp_no, e.first_name, e.last_name, d.dept_name
from employees.employees e
join employees.dept_emp de on e.emp_no=de.emp_no
join employees.departments d on de.dept_no=d.dept_no
where d.dept_no='d001';