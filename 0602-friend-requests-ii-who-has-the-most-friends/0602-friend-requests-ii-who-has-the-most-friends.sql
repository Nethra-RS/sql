# Write your MySQL query statement below
select id, count(*) as num
from (
    select requester_id as id from requestaccepted
    union all 
    select accepter_id as id from requestaccepted
)as f
group by id
order by num desc, id asc
limit 1; 
