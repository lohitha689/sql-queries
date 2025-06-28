-- Orders from United States with high priority
SELECT * FROM superstore_data
WHERE country = 'United States' AND "order_priority" = 'High';
