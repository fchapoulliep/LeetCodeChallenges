# Write your MySQL query statement below
WITH total as (SELECT person_name, weight, turn, SUM(weight) OVER (ORDER BY turn) as total FROM Queue)
SELECT person_name
FROM total 
WHERE total <= 1000
ORDER BY total DESC
LIMIT 1;
