# Write your MySQL query statement below
SELECT p.product_id, IFNULL(ROUND(SUM(p.price*u.units)/sum(u.units),2),0) as average_price
FROM Prices p
LEFT JOIN UnitsSold u ON p.product_id = u.product_id
WHERE u.purchase_date BETWEEN p.start_date and p.end_date or u.purchase_date IS NULL
GROUP BY p.product_id;
