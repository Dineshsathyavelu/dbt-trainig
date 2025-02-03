select  o.ORDER_ID,
        o.ORDER_DATE,
        o.SHIP_DATE,
        o.SHIP_MODE,
        o.ORDER_COST_PRICE,
        o.ORDER_SELLING_PRICE,
        c.CUSTOMER_ID,
        c.CUSTOMER_NAME,
        c.SEGMENT,
        c.COUNTRY,
        c.STATE,
        p.CATEGORY,
        p.PRODUCT_ID,
        p.PRODUCT_NAME,
        p.SUBCATEGORY,
        o.ORDER_SELLING_PRICE - o.ORDER_COST_PRICE as profit
from {{ ref('raw_orders') }} o
left join {{ ref('raw_customers') }} c
on o.CUSTOMER_ID = c.CUSTOMER_ID
left join {{ ref('raw_product') }} p
on o.PRODUCT_ID = p.PRODUCT_ID