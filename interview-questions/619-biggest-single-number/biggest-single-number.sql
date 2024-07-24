# Write your MySQL query statement below
with singles as(
    select num from mynumbers group by num having count(num) = 1
)
select max(num) as num from singles