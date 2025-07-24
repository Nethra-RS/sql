# Write your MySQL query statement below

select round(count(*)/(select count(distinct player_id) from activity),2) as fraction
from (select player_id, min(event_date) as first_login
from activity
group by player_id) as t
join activity a
on a.player_id=t.player_id
and  datediff(a.event_date,t.first_login)=1;
