# Write your MySQL query statement below
select firstName , lastName, city, state
from Person P
Left JOIN Address A
ON P.personId = A.personId;