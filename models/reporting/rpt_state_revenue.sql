SELECT
    customer_state,
    ROUND(SUM(payment_value),2) AS revenue
FROM {{ ref('fct_revenue') }}
GROUP BY customer_state
ORDER BY revenue DESC