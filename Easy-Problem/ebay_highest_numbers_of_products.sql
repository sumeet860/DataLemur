-- To sort and find top 3 products with spend > 1000

SELECT user_id, COUNT(*) product_id
FROM user_transactions
GROUP BY user_id
HAVING SUM(spend) >= '1000'
ORDER BY product_id DESC, SUM(spend) DESC
LIMIT 3;
