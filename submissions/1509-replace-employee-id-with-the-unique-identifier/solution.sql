# Write your MySQL query statement below
Select eu.unique_id, e.name
FROM Employees e
LEFT OUTER JOIN EmployeeUNI eu ON e.id = eu.id;
