-- To find the average rating of the product order by month and group by porduct

SELECT mth AS month, product,
ROUND(AVG(stars), 2) AS avg_stars FROM
(SELECT EXTRACT(MONTH FROM submit_date) AS mth, 
product_id AS product, stars FROM reviews
GROUP BY submit_date, product_id, stars) AS review
GROUP BY month, product
ORDER BY month, product;
