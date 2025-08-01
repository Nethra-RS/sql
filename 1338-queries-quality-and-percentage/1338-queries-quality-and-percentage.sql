# Write your MySQL query statement below
select query_name, round(sum(rating/position)/count(*),2) as quality, round(sum(case when rating<3 then 1 else 0 END) *100/count(*),2) as poor_query_percentage
from queries
group by query_name;