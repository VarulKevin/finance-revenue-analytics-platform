SELECT
    DATE_TRUNC('MONTH', order_purchase_timestamp) AS reporting_month,
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(DISTINCT customer_id) AS total_customers,
    ROUND(SUM(payment_value),2) AS revenue,
    ROUND(AVG(payment_value),2) AS avg_order_value
FROM {{ ref('fct_revenue') }}
GROUP BY reporting_month