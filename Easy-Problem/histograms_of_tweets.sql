-- To count users number of tweets
with tweet_count
AS (
SELECT COUNT(tweet_id) AS tweet_count, user_id FROM tweets
WHERE tweet_date BETWEEN '2022-01-01' 
AND '2022-12-31'
GROUP BY user_id)

SELECT tweet_count AS tweet_bucket, COUNT(user_id) AS user_num
FROM tweet_count
GROUP BY tweet_count;
