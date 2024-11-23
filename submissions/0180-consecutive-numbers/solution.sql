# Write your MySQL query statement below
SELECT DISTINCT l2.num AS ConsecutiveNums
FROM Logs l
JOIN Logs l1 ON l1.id = l.id - 1 AND l1.num = l.num
JOIN Logs l2 ON l2.id = l.id - 2 AND l2.num = l.num

