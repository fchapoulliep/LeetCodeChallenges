# Write your MySQL query statement below
SELECT c.customer_id
FROM Customer c
GROUP BY c.customer_id HAVING COUNT(distinct product_key) = (SELECT COUNT(product_key) from Product);
