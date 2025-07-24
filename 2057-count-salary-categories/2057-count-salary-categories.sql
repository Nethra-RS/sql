# Write your MySQL query statement below
with categories as( 
select 'Low Salary' as category
union
select 'Average Salary' 
union 
select 'High Salary'
), 
acc as (select(case when income < 20000 then 'low salary'
 when income between 20000 and 50000 then 'average salary'
else 'high salary' end) as category
from accounts)   

select s.category, COALESCE(COUNT(m.category), 0) AS accounts_count
from categories s
left join acc as m
on s.category=m.category
group by s.category
order by accounts_count desc;