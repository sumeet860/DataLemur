-- To find out sum of top 2 highest grossing product according to their category

SELECT category, product, total_spend
FROM
(SELECT category, product, SUM(spend) total_spend,
RANK() OVER(PARTITION BY category ORDER BY SUM(spend) DESC) 
total FROM product_spend
WHERE transaction_date BETWEEN '2022-01-01' AND '2022-12-31'
GROUP BY category, product) AS total_
WHERE total_.total <=2;

