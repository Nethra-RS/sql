# Write your MySQL query statement below
 
SELECT
  (
    SELECT max(salary)
    FROM (
      SELECT salary, dense_RANK() OVER (ORDER BY salary DESC) AS r
      FROM employee
    ) ranked_salaries
    WHERE r = 2
   
  ) AS SecondHighestSalary;
