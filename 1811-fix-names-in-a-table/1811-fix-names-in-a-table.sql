# Write your MySQL query statement below
select user_id,concat(ucase(left(name,1)),lcase(substring(name,2))) as Name
from users
order by user_id;