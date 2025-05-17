--16. For each department, identify the employee with the highest single salary ever recorded. List the
--  department name, employee's first name, last name, and the peak salary amount. Order the results
--  by the peak salary in descending order.

-- Her departman için, kaydedilmiş en yüksek tek maaşı belirle. Departman adını, çalışanın adını,
-- soyadını ve en yüksek maaş tutarını listele. Sonuçları en yüksek maaşa göre azalan şekilde sırala.

select * from employees.employees;
select * from employees.departments;
select * from employees.dept_emp;
select * from employees.salaries;

select d.dept_name, e.first_name, e.last_name, s.salary
from salaries s
join employees e on s.emp_no = e.emp_no
join dept_emp de on e.emp_no = de.emp_no
join departments d on de.dept_no = d.dept_no
join (select de.dept_no, max(s.salary) as max_salary
    from salaries s
    join dept_emp de on s.emp_no = de.emp_no
    group by de.dept_no) as max_salaries
on de.dept_no = max_salaries.dept_no and s.salary = max_salaries.max_salary
order by s.salary desc;