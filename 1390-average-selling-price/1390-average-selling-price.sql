# Write your MySQL query statement below
select m.product_id, round(m.sp,2)as average_price
from (select p.product_id, (case when sum(u.units)>0 then (sum(p.price*u.units)/sum(u.units)) else 0 end) as sp
from prices p
left join unitssold u
on p.product_id=u.product_id and u.purchase_date between start_date and end_date
group by p.product_id) as m;