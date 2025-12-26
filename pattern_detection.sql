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
    RANK() OVER (ORDER BY total_sales DESC) AS sales_rank
FROM monthly_sales;
