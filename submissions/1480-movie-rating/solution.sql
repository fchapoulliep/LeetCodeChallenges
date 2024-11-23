# Write your MySQL query statement below
(SELECT name results
FROM Users u
JOIN MovieRating mr ON u.user_id = mr.user_id
GROUP BY u.name
ORDER BY COUNT(mr.rating) DESC, u.name ASC
LIMIT 1)

UNION ALL

(SELECT title results
FROM Movies m
JOIN MovieRating mr ON m.movie_id = mr.movie_id
where EXTRACT(YEAR_MONTH FROM created_at) = 202002
GROUP BY m.title
ORDER BY AVG(mr.rating) DESC, m.title ASC
LIMIT 1)
