# Write your MySQL query statement below
select distinct num as ConsecutiveNums
from (
    select num, 
           id, 
           lag(num) over (order by id) as prev_num,
           lead(num) over (order by id) as next_num,
           lag(id) over (order by id) as prev_id,
           lead(id) over (order by id) as next_id
    from logs
) as x
where num = prev_num 
  and num = next_num
  and id = prev_id + 1
  and id = next_id - 1;