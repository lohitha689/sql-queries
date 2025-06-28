-- Customers with above-average total sales
SELECT customer_Name, SUM(sales) AS total_spent
FROM superstore_data
GROUP BY customer_Name
HAVING SUM(sales) > (
    SELECT AVG(total_sales)
    FROM (
        SELECT customer_Name, SUM(sales) AS total_sales
        FROM superstore_data
        GROUP BY customer_Name
    ) AS customer_totals
);
