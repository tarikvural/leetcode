# Write your MySQL query statement below
with usersInContest as (
    select contest_id, user_id, count(user_id) as user_count 
    from register
    group by contest_id
)
select r.contest_id, round((r.user_count/count(r.user_id))*100,2) as percentage
from users u join usersInContest r
group by r.contest_id
order by percentage desc, r.contest_id asc