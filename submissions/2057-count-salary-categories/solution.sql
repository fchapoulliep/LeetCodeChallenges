# Write your MySQL query statement below
WITH Categories AS (
    SELECT 'Low Salary' AS category
    UNION ALL
    SELECT 'Average Salary'
    UNION ALL
    SELECT 'High Salary'
)
SELECT c.category, IFNULL(COUNT(a.account_id), 0) AS accounts_count
FROM Categories c
LEFT JOIN Accounts a 
    ON (c.category = 
        CASE 
            WHEN a.income < 20000 THEN 'Low Salary'
            WHEN a.income BETWEEN 20000 AND 50000 THEN 'Average Salary'
            WHEN a.income > 50000 THEN 'High Salary'
        END)
GROUP BY c.category
ORDER BY c.category;


