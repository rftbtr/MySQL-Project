-- 15. Find the Employee with the Highest Salary Average in the Research Department

--  Araştırma Departmanındaki Ortalama En Yüksek Maaşlı Çalışanı Bul

select * from employees.employees;
select * from employees.departments;
select * from employees.dept_emp;
select * from employees.salaries;

select e.first_name, e.last_name, avg(s.salary) from employees.employees e
join employees.dept_emp de on e.emp_no = de.emp_no
join employees.departments d on de.dept_no = d.dept_no
join employees.salaries s on e.emp_no = s.emp_no
where d.dept_name = 'Research'
group by e.emp_no
order by avg(s.salary) desc limit 1;