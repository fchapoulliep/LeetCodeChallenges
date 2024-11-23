# Write your MySQL query statement below
Select s.product_id, s.year as first_year, s.quantity, s.price
FROM Sales s
WHERE (s.product_id,s.year) IN (Select product_id, MIN(year) from Sales GROUP BY product_id);
