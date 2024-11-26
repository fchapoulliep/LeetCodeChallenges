WITH CTE AS (
    SELECT lat, lon, tiv_2015, tiv_2016
    FROM Insurance
    GROUP BY lat, lon
    HAVING COUNT(*) = 1
)

SELECT ROUND(SUM(tiv_2016), 2) AS tiv_2016
FROM CTE
WHERE tiv_2015 IN ( SELECT tiv_2015 FROM Insurance GROUP BY  tiv_2015 HAVING COUNT(*) >= 2 );


