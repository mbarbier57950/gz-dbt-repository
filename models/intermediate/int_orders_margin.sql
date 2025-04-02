SELECT  
    orders_id
    ,date_date
    ,round(SUM(revenue),2) AS revenue
    ,round(SUM(quantity),2) AS quantity
    ,round(SUM(purchase_cost),2) AS purchase_cost
    ,round(SUM(margin),2) AS margin
FROM {{ref('int_sales_margin')}}
GROUP BY 
    orders_id
    ,date_date
ORDER BY 
    orders_id DESC
    ,date_date 