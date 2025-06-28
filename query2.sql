-- Customer names and their total order value
SELECT customer_Name, SUM(sales) AS total_spent
FROM superstore_data
GROUP BY customer_Name
ORDER BY total_spent DESC;
