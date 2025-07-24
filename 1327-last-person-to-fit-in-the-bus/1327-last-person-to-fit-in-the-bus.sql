# Write your MySQL query statement below
select n.person_name
from (select *, sum(weight) over(order by turn) as total_weight from queue) as n
where n.total_weight<=1000
order by n.total_Weight desc
limit 1;