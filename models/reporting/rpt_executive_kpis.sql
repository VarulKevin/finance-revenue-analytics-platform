SELECT
    SUM(revenue) AS total_revenue,
    SUM(total_orders) AS total_orders,
    SUM(total_customers) AS total_customers,
    ROUND(AVG(avg_order_value),2) AS avg_order_value
FROM {{ ref('fct_finance_summary') }}