select * 
from {{ ref('raw_customers') }}
where customer_id is null