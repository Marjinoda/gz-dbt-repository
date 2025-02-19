{{ config(materialized='view' ) }}

SELECT 
    date_date,
    ROUND((operational_margin - ads_cost),1) AS ads_margin,
    average_basket,
    operational_margin,
    ads_cost,
    ads_impression,
    ads_click,
    quantity,
    revenue,
    purchase_cost,
    shipping_fee,
    logcost
FROM {{ ref('int_campaigns_day') }}
JOIN {{ ref('finance_days') }}
USING(date_date)
ORDER BY date_date DESC