# Write your MySQL query statement below
select m.Department,m.Employee,m.Salary
from (select d.name as Department, e.name as Employee,e.salary,dense_rank() over(partition by departmentId order by salary DESC) as r
from employee e
left join department d
on e.departmentid=d.id) as m
where r<=3;