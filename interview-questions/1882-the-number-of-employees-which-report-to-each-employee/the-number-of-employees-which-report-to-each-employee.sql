# Write your MySQL query statement below
select m.employee_id, m.name, count(distinct e.employee_id) as reports_count, round(sum(e.age)/ count(distinct e.employee_id),0) as average_age
from employees m inner join employees e on m.employee_id = e.reports_to
where e.reports_to is not null
group by m.employee_id