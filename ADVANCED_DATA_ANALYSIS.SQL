WITH monthly_sales AS (
    SELECT
        DATE_FORMAT(sale_date, '%Y-%m') AS month,
        SUM(amount) AS total_sales
    FROM sales_data
    GROUP BY month
)
SELECT
    month,
    total_sales,
    SUM(total_sales) OVER (ORDER BY month) AS running_total
FROM monthly_sales;
