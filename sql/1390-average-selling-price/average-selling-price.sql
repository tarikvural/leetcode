# Write your MySQL query statement below
select p.product_id,
coalesce(
        round(
            sum(u.units*p.price) / sum(u.units)
        ,2)
    ,0) as average_price
from
    prices p
left join 
    unitssold u
on
    u.product_id = p.product_id 
    AND u.purchase_date BETWEEN p.start_date AND p.end_date
group by product_id