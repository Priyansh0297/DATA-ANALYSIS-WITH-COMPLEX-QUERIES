SELECT employee_name, SUM(amount) AS total_sales
FROM sales_data
GROUP BY employee_name
HAVING SUM(amount) >
      (SELECT AVG(amount) FROM sales_data);
