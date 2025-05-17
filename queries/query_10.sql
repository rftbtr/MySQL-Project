-- 10. Find all salary changes for employee with emp. no '10102'

-- '10102' iş numarasına sahip çalışanın tüm maaş değişikliklerini bul.

select * from employees.salaries;
select e.first_name, e.last_name, s.salary from employees.salaries s
join employees.employees e on e.emp_no= s.emp_no
where e.emp_no='10102';

