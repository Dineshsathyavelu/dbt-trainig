with cte_1
as
(
select
    emp_id,
    order_id,
    emp_name
from {{source('staging','emp')}}
)
select * from cte_1



