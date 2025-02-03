select
PRODUCT_ID
,PRODUCT_NAME
,SUBCATEGORY
,sum(PROFIT) as profit_by_product
from {{ ref('stg_orders') }}
group by PRODUCT_ID
,PRODUCT_NAME
,SUBCATEGORY