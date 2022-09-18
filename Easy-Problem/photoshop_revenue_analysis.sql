-- To find the sum of product cost from users where product is not Photoshop

SELECT customer_id, SUM(revenue) AS revenue
FROM adobe_transactions
WHERE customer_id IN (SELECT customer_id
FROM adobe_transactions WHERE product = 'Photoshop')
AND product != 'Photoshop'
GROUP BY customer_id
ORDER BY customer_id;
