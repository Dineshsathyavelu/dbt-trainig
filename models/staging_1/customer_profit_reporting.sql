select CUSTOMER_ID
,CUSTOMER_NAME
,SEGMENT
,COUNTRY
,STATE
,sum(PROFIT) as profit_by_customer
from {{ ref('stg_orders') }}
group by CUSTOMER_ID
,CUSTOMER_NAME
,SEGMENT
,COUNTRY
,STATE