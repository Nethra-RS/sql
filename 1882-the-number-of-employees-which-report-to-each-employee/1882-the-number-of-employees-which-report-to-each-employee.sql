# Write your MySQL query statement below
select e.employee_id,e.name , count(m.name)as reports_count,round(avg(m.age),0) as average_age
from employees e
join employees m
on e.employee_id=m.reports_to
group by m.reports_to
order by m.reports_to asc;