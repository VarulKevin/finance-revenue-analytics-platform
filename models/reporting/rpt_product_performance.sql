SELECT
    product_category_name,
    ROUND(SUM(payment_value),2) AS revenue
FROM {{ ref('fct_revenue') }}
GROUP BY product_category_name
ORDER BY revenue DESC