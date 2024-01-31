SELECT 
category_id,
ROUND(AVG(price), 2) AS 'Average Price' ,
ROUND(MIN(price), 2) AS 'Cheapest Product',
MAX(price) AS 'Most Expensive Product'
FROM products
GROUP BY category_id;
