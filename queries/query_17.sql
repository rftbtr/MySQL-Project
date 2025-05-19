--17. Identify the employees in each department who have the highest average salary. List the
--  department name, employee's first name, last name, and the average salary. Order the results by
--  average salary in descending order, showing only those with the highest average salary within their
--  department.

--  Her departmandaki en yüksek ortalama maaşa sahip çalışanları belirle. Departman adını,
--  çalışanın adını, soyadını ve ortalama maaşı listele. Sonuçları departmanlarına göre azalan şekilde
--  sırala, sadece kendi departmanlarında en yüksek ortalama maaşa sahip olanları göster.

SELECT
    d.dept_name AS department,
    e.first_name,
    e.last_name,
    AVG(s.salary) AS avg_salary
FROM employees e
INNER JOIN dept_emp de ON e.emp_no = de.emp_no
INNER JOIN departments d ON de.dept_no = d.dept_no
INNER JOIN salaries s ON e.emp_no = s.emp_no
GROUP BY d.dept_name, e.emp_no, e.first_name, e.last_name
ORDER BY avg_salary DESC;
