-- To find the count of laptop and mobile viewership

WITH cte_count AS
(SELECT
(SELECT COUNT(device_type)
FROM viewership WHERE device_type = 'laptop') AS laptop,
(SELECT COUNT(*) device_type
FROM viewership WHERE device_type IN ('tablet', 'phone')) AS mobile
)
SELECT laptop, mobile FROM cte_count;


