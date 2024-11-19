# Write your MySQL query statement below
Select name
FROM Employee
WHERE id in (select managerId from Employee GROUP BY managerId HAVING COUNT(*) >= 5)
