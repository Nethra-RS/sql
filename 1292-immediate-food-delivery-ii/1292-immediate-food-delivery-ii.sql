# Write your MySQL query statement below
select round(sum(case when t.order_='immediate' then 1 else 0 end)*100/count(*),2) as immediate_percentage
from (select m.delivery_id, m.customer_id, m.order_date,m.order_, row_number() over(partition by customer_id order by order_date) as rn
from (select *, (case when order_date = customer_pref_delivery_date then 'immediate' else 'schedule' end) as order_
from delivery) as m) as t
where rn=1;