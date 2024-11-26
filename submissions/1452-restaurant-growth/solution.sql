# Write your MySQL query statement below
WITH CTE AS (Select visited_on, SUM(amount) as total FROM Customer GROUP BY visited_on)

SELECT visited_on, amount, average_amount
FROM (SELECT visited_on,
sum(total) over(order by visited_on ASC rows between 6 preceding and current row) AS amount,
round(avg(total) over(order by visited_on ASC rows between 6 preceding and current row), 2) AS average_amount
FROM CTE) AS tmp
WHERE visited_on >= (SELECT MIN(visited_on) FROM Customer) + INTERVAL 6 DAY
ORDER BY visited_on ASC
