-- Loss-making products
SELECT "Product Name", SUM(Profit) AS total_profit
FROM "db_yashashviaws"."orders"
GROUP BY "Product Name"
ORDER BY total_profit ASC
LIMIT 10;

-- Most profitable customer segments
SELECT Segment, SUM(Profit) AS total_profit
FROM "db_yashashviaws"."orders"
GROUP BY Segment
ORDER BY total_profit DESC;

-- Profit by region
SELECT Region, SUM(Profit) AS total_profit
FROM "db_yashashviaws"."orders" 
GROUP BY Region
ORDER BY total_profit DESC;

-- Top 10 products by sale
SELECT "product name", SUM(Sales) AS total_sales
FROM "db_yashashviaws"."orders"
GROUP BY "Product Name"
ORDER BY total_sales DESC
LIMIT 10;

