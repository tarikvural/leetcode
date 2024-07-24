# Write your MySQL query statement below
with firstgames as(
    select player_id, min(event_date) as first_date from activity
    group by player_id
)
select round(
        sum(
            if(DATE_ADD(f.first_date, INTERVAL 1 DAY) = a.event_date,1,0)
        ) / count(distinct f.player_id)
    ,2) as fraction
from firstgames f join activity a on f.player_id = a.player_id