# Write your MySQL query statement below
select max(t.num) as num 
from ( select m.num
from(select num, count(num) as c 
from Mynumbers
group by num) as m
where c=1) as t;
