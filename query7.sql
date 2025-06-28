SELECT 
  category,
  state,
  SUM(profit) AS total_profit
FROM 
  superstore_data
GROUP BY 
  category, state
ORDER BY 
  category, total_profit DESC;
