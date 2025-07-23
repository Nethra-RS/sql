# Write your MySQL query statement below
select name, bonus 
from Employee E
left join bonus b
on E.empId=b.empId
where (b.bonus<1000 or b.bonus IS NULL);