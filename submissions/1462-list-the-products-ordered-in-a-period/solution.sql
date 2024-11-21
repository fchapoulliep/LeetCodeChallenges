# Write your MySQL query statement below
SELECT p.product_name, SUM(o.unit) as unit
FROM Products p
INNER JOIN Orders o on p.product_id = o.product_id
WHERE o.order_date LIKE '2020-02%'
GROUP BY p.product_name HAVING unit >= 100;