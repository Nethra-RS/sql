
select s.user_id, COALESCE(m.ca,0) as confirmation_rate
from signups s
left join (select c.user_id,round(count( case when action='confirmed' then 1 end)*1.0/count(user_id),2) as ca
from confirmations c
 
group by user_id) as m
on s.user_id=m.user_id;
