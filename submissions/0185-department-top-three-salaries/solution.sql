# Write your MySQL query statement below
WITH CTE as (
    Select d.name as Department, e.name as Employee, e.salary as Salary, DENSE_RANK() OVER (PARTITION by d.name ORDER BY e.salary DESC) as ranking 
    FROM Employee e
    LEFT JOIN Department d ON e.departmentId = d.id
)

Select Department, Employee, Salary from CTE Where ranking between 1 and 3;
