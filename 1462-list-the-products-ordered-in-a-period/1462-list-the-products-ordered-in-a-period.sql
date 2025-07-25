# Write your MySQL query statement below
select product_name, sum(m.unit) as unit
from products p
join (select product_id, unit 
from orders
where date_format(order_date,'%Y-%m')='2020-02') as m
on p.product_id=m.product_id 
group by product_name 
having sum(m.unit)>=100;