# Write your MySQL query statement below
Select user_id, count(user_id) as followers_count
from followers
group by user_id
order by user_id asc;