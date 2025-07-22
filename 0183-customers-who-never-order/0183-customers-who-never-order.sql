# Write your MySQL query statement below
select name AS Customers 
from Customers 
where id not in (select c.id from Customers c INNER JOIN orders o on c.id=o.customerId);
