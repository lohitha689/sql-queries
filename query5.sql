-- View: Profit by Region and Segment
CREATE VIEW profit_by_region_segment AS
SELECT region, segment, SUM(profit) AS total_profit
FROM superstore_data
GROUP BY region, segment;
