SELECT 
  category,
  COUNT(DISTINCT "order_id") AS total_orders,
  SUM(sales) AS total_sales,
  SUM(profit) AS total_profit,
  SUM(quantity) AS total_quantity,
  ROUND(AVG(profit), 2) AS avg_profit_per_record,
  ROUND(AVG(Sales), 2) AS avg_sales_per_record
FROM 
  superstore_data
GROUP BY 
  category
ORDER BY 
  total_sales DESC;
