SELECT
    orders_id
    ,date_date
    ,revenue
    ,margin
    ,round(margin + shipping_fee - log_cost -ship_cost,2) AS operational_margin
    ,purchase_cost
    ,shipping_fee
    ,log_cost
    ,quantity
FROM {{ref('int_orders_margin')}} as o
LEFT JOIN {{ref('ship')}} as s USING(orders_id)
ORDER BY 
    orders_id DESC
    ,date_date 