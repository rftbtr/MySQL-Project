-- 12. Find the employee with the highest salary

-- En yüksek maaşa sahip çalışanı bul.

select * from employees.salaries;
select e.first_name, e.last_name, s.salary from employees.salaries s
join employees.employees e on e.emp_no= s.emp_no
order by s.salary desc
limit 1;