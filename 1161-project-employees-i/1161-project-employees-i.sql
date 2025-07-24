# Write your MySQL query statement below
select m.project_id,round(sum(m.experience_years)/count(m.employee_id),2) as average_years
from (select p.project_id,p.employee_id,e.name,e.experience_years
from project p
 join employee e
on p.employee_id=e.employee_id) as m
group by m.project_id;
