SELECT 
    *
    ,round(quantity*purchase_price,2) AS purchase_cost
    ,round(revenue -  quantity*purchase_price,2) AS margin
FROM {{ref('sales')}} AS s
LEFT JOIN {{ref('product')}} AS p USING(products_id)
order by orders_id DESC, date_date