SELECT
    payment_type,
    COUNT(*) AS transactions,
    ROUND(SUM(payment_value),2) AS revenue
FROM {{ ref('fct_revenue') }}
GROUP BY payment_type
ORDER BY revenue DESC