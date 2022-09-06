-- To find top 2 message count in August 2022

SELECT sender_id, COUNT(sender_id) AS message_count 
FROM messages
WHERE sent_date BETWEEN '2022-08-01' AND '2022-08-31'
GROUP BY sender_id 
ORDER BY message_count DESC LIMIT 2;

