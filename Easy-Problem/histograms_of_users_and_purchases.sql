-- To find out number of users and product having latest transaction date

with count_user AS(
  SELECT 
    user_id,
    product_id,
    transaction_date,
    RANK() OVER(PARTITION BY user_id
      ORDER BY transaction_date DESC) rk
  FROM user_transactions)
SELECT 
  transaction_date, 
  COUNT(DISTINCT user_id) number_of_users,
  COUNT(product_id) number_of_products
FROM count_user
WHERE rk = 1
GROUP BY transaction_date;
