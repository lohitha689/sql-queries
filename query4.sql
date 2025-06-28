-- Monthly sales summary
SELECT DATE_TRUNC('month', "order_date") AS month, SUM(Sales) AS total_sales
FROM superstore_data
GROUP BY month
ORDER BY month;
