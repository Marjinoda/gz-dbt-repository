SELECT 
    orders_id, 
    date_date, 
    ROUND(margin + shipping_fee - logcost - ship_cost,2) AS operational_margin,
    revenue,
    quantity,
    margin,
    purchase_cost,
    shipping_fee,
    logcost
FROM {{ ref('int_orders_margin') }}
JOIN {{ ref('stg_raw__ship') }}
USING(orders_id)
ORDER BY orders_id DESC