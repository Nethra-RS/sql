# Write your MySQL query statement below
select tweet_id
from (select tweet_id, char_length(content) as len_content
from tweets) as p
where len_content>15;
