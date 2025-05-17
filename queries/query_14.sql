-- 14.  List the first name, last name, and highest salary of employees in the "Sales" department.
--      Order the list by highest salary descending and only show the employee with the highest salary.

--      "Satış" departmanındaki çalışanların adını, soyadını ve en yüksek maaşını listele.
--      Listeyi en yüksek maaşa göre azalan şekilde sırala ve sadece en yüksek maaşa sahip çalışanı
--      göster.

select * from employees.employees;
select * from employees.departments;
select * from employees.dept_emp;
select * from employees.salaries;

select e.first_name, e.last_name, max(salary) from employees.employees e
join employees.dept_emp de on e.emp_no = de.emp_no
join employees.departments d on de.dept_no = d.dept_no
join employees.salaries s on e.emp_no = s.emp_no
where d.dept_name = 'Sales'
group by e.emp_no
order by max(salary) desc limit 1;