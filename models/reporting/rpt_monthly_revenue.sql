SELECT
    DATE_TRUNC('MONTH', order_purchase_timestamp) AS month,
    ROUND(SUM(payment_value),2) AS revenue
FROM {{ ref('fct_revenue') }}
GROUP BY month
ORDER BY month