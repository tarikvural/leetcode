# Write your MySQL query statement below
#select distinct num as ConsecutiveNums
#from(
#    select num, id, lag(num) over(order by id) as prev, lead(num) over(order by id) as after from logs
#) as x where num = x.prev and num = x.after

SELECT DISTINCT
    l1.Num AS ConsecutiveNums
FROM
    Logs l1,
    Logs l2,
    Logs l3
WHERE
    l1.Id = l2.Id - 1
    AND l2.Id = l3.Id - 1
    AND l1.Num = l2.Num
    AND l2.Num = l3.Num
;