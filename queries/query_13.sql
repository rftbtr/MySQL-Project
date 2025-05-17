-- 13. Find the latest salaries for each employee

-- Her çalışanın en son maaşlarını bul.

select * from employees.salaries;
select * from employees.employees;

select e.first_name, e.last_name, salaries.emp_no, max(salary)
from salaries
join employees.employees e on e.emp_no=salaries.emp_no
group by emp_no;

SELECT e.emp_no, e.first_name, e.last_name, s.salary, s.from_date
FROM employees e
JOIN salaries s ON e.emp_no = s.emp_no
JOIN (
    SELECT emp_no, MAX(from_date) AS latest_date
    FROM salaries
    GROUP BY emp_no
) latest_s ON s.emp_no = latest_s.emp_no AND s.from_date = latest_s.latest_date;