-- To find the confirmation date next of signup date

SELECT user_id
FROM emails e
LEFT JOIN texts t ON e.email_id = t.email_id
WHERE e.signup_date = t.action_date - INTERVAL '1day'
AND signup_action = 'Confirmed'



