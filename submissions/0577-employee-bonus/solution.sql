# Write your MySQL query statement below
Select e.name, b.bonus
FROM Employee e
LEFT OUTER JOIN Bonus b ON b.empId = e.empId
WHERE b.bonus < 1000 or b.bonus IS NULL
