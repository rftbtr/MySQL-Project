-- 11. Find the salary increases for employee with employee number '10102' (using
-- the to_date column in salaries)

-- Maaş numarası '10102' olan çalışanın maaş artışlarını bul
-- ('to_date' sütununu kullanarak).

select * from employees.employees.salaries;
select first_name, last_name, salary, to_date from employees.salaries s
join employees.employees e on e.emp_no= s.emp_no
where e.emp_no='10102'
order by to_date asc;
