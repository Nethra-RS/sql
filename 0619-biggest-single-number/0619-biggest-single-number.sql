# Write your MySQL query statement below
select max(m.num) as num 
from(select num, count(num) as c 
from Mynumbers
group by num
having count(num)=1) as m;
