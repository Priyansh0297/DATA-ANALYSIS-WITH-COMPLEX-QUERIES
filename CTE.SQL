WITH monthly_sales AS (
    SELECT
        DATE_FORMAT(sale_date, '%Y-%m') AS month,
        SUM(amount) AS total_sales
    FROM sales_data
    GROUP BY month
)
SELECT * FROM monthly_sales;
