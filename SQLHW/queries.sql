SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees as e INNER JOIN salaries as s ON e.emp_no=s.emp_no;

select emp_no, first_name, last_name 
from employees 
where hire_date between '1986-01-01' and '1986-12-31';

select m.dept_no, m.emp_no, d.dept_name, e.first_name, e.last_name, m.from_date, m.to_date
from dept_manager as m
left join departments as d on m.dept_no=d.dept_no
left join employees as e on m.emp_no=e.emp_no;

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e 
left join dept_emp de on e.emp_no=de.emp_no
left join departments d on d.dept_no=de.dept_no;

select emp_no, last_name, first_name
from employees
where first_name = 'Hercules' and last_name like 'B%'

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e 
left join dept_emp de on e.emp_no=de.emp_no
left join departments d on d.dept_no=de.dept_no
where d.dept_name in ('Sales', 'Development');

select last_name, count(last_name) as count_of_ln
from employees
group by last_name
order by count_of_ln desc;