SELECT
    oi.order_id,
    dc.customer_id,
    dp.product_id,
    dc.customer_state,
    dp.product_category_name,
    o.order_purchase_timestamp,
    pay.payment_type,
    pay.payment_value,
    oi.price,
    oi.freight_value

FROM {{ ref('stg_order_items') }} oi

JOIN {{ ref('stg_orders') }} o
    ON oi.order_id = o.order_id

JOIN {{ ref('dim_customers') }} dc
    ON o.customer_id = dc.customer_id

LEFT JOIN {{ ref('dim_products') }} dp
    ON oi.product_id = dp.product_id

LEFT JOIN {{ ref('stg_payments') }} pay
    ON oi.order_id = pay.order_id