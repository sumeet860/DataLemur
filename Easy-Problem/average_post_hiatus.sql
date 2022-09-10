To find the difference between the first and last post

SELECT user_id, EXTRACT(DAY FROM MAX(post_date) - MIN(post_date)) AS days_between
FROM posts WHERE post_date BETWEEN '2021-01-01' AND '2021-12-31'
GROUP BY user_id
HAVING EXTRACT(DAY FROM MAX(post_date) - MIN(post_date)) NOT IN ('0');
