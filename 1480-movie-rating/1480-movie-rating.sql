# Write your MySQL query statement below
(select u.name as results
from movierating m , users u
where u.user_id=m.user_id
group by name
order by count(*) desc,name asc
limit 1)
union all



(SELECT 
    m.title as results  
FROM movies m
JOIN movierating mr ON m.movie_id = mr.movie_id
where DATE_FORMAT(mr.created_at, '%Y-%m')='2020-02'
GROUP BY 
    m.title 
ORDER BY 
    AVG(mr.rating) DESC, m.title ASC
LIMIT 1);
