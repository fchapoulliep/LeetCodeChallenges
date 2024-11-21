# Write your MySQL query statement below
SELECT ROUND(SUM(IF(DATEDIFF(a.event_date,temp.day1)=1,1,0))/COUNT(distinct a.player_id),2) AS fraction
FROM
(SELECT player_id,min(event_date) AS day1 FROM Activity
group by player_id) AS temp
join activity a ON
temp.player_id=a.player_id
