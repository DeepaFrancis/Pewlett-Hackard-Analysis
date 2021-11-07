--Deliverable 1
select emp.emp_no, 
emp.first_name, 
emp.last_name,
t.title, 
t.from_date,
t.to_date
into retirement_titles
from employees emp
join titles t on emp.emp_no=t.emp_no 
where (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
order by emp.emp_no;


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no,to_date DESC;

select count(emp_no) count,
title 
into retiring_titles
from unique_titles
group by title
order by count desc;

select distinct on(emp.emp_no) emp.emp_no, 
emp.first_name,
emp.last_name,
emp.birth_date,
dept.from_date,
dept.to_date,
t.title 
from employees emp 
join dept_emp dept on emp.emp_no=dept.emp_no
join titles t on emp.emp_no=t.emp_no
where dept.to_date='9999-01-01'
and (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
order by emp.emp_no;





