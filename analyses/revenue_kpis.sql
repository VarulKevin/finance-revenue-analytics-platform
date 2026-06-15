    SELECT 
        customer_state,
        ROUND(SUM(payment_value),2) AS total_revenue
    FROM {{ref('fct_revenue')}}
    GROUP BY customer_state
    ORDER BY total_revenue DESC