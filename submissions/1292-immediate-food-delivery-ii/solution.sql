# Write your MySQL query statement below
SELECT ROUND((SUM(IF(order_date = customer_pref_delivery_date, 1, 0)) / COUNT(*)*100),2) as immediate_percentage
FROM Delivery
WHERE (customer_id, order_date) IN (Select customer_id, MIN(order_date) FROM Delivery GROUP BY customer_id)
