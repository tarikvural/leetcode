# Write your MySQL query statement below
select activity_date as day, count(distinct user_id) as active_users
from activity
where activity_date between DATE_SUB("2019-07-27", INTERVAL 29 DAY) and '2019-07-27'
group by activity_date
order by activity_date asc