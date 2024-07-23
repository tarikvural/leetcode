# Write your MySQL query statement below
with success as (
    select user_id, count(*) as amount
    from confirmations
    where action='confirmed'
    group by user_id
), tries as (
    select user_id, count(*) as amount
    from confirmations
    group by user_id
)
select signups.user_id, round(coalesce(success.amount/tries.amount,0),2) as confirmation_rate
from signups 
left join tries 
    on signups.user_id = tries.user_id 
left join success 
    on tries.user_id = success.user_id
