--20. List the names, last names, hire dates, and salaries of all employees in the Sales department who
--  were hired between January 01, 1985 and December 31, 1989, sorted by salary in descending order.

--  1985-01-01 ile 1989-12-31 tarihleri arasında işe alınan Satış departmanındaki tüm çalışanların
--  adlarını, soyadlarını, işe alınma tarihlerini ve maaşlarını, maaşa göre azalan şekilde sıralı olarak
--  listele.

select e.first_name, e.last_name, e.hire_date, s.salary from employees.employees e
join dept_emp de on e.emp_no = de.emp_no
join departments d on de.dept_no = d.dept_no
join employees.salaries s on e.emp_no = s.emp_no
where hire_date between '1985-01-01' and '1989-12-31'
and d.dept_name = 'Sales'
order by s.salary desc;