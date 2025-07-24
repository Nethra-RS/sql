# Write your MySQL query statement below
select m.day, count(m.user_id) as active_users
from (select distinct user_id, activity_date as day
from activity
WHERE activity_date BETWEEN DATE_SUB('2019-07-27', INTERVAL 29 DAY) AND '2019-07-27') as m
group by m.day
order by m.day;

