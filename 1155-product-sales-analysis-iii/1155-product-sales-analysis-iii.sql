# Write your MySQL query statement below
select m.product_id,m.year as first_year,m.quantity,m.price
from (select *, RANK() over(partition by product_id  order by year) as rn
from sales)as m
where rn=1;