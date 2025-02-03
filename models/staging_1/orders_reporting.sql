select ORDER_ID
       ,ORDER_DATE
       ,SHIP_DATE
       ,SHIP_MODE
       ,sum(PROFIT) as profit_by_orders
from {{ ref('stg_orders') }}
group by ORDER_ID
       ,ORDER_DATE
       ,SHIP_DATE
       ,SHIP_MODE
      
