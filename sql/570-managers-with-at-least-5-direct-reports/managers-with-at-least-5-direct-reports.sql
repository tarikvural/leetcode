# Write your MySQL query statement below
with manager as (
    select managerId, count(managerId) as managerCount
    from employee
    group by managerId
) 
select name 
from employee
    join manager
    on employee.id = manager.managerId
where managerCount >= 5