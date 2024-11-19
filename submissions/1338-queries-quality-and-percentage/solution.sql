# Write your MySQL query statement below
SELECT q.query_name, ROUND(SUM(q.rating / q.position)/COUNT(q.query_name),2) as quality, ROUND(AVG(q.rating < 3) * 100,2) as poor_query_percentage
FROM Queries q
WHERE q.query_name IS NOT NULL
GROUP BY q.query_name;
