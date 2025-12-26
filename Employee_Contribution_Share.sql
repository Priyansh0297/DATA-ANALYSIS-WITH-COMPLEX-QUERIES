 SELECT
    employee_name,
    SUM(amount) AS employee_sales,
    ROUND(
        SUM(amount) * 100.0 /
        SUM(SUM(amount)) OVER (),
        2
    ) AS contribution_percentage
FROM sales_data
GROUP BY employee_name;
