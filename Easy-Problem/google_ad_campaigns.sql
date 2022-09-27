-- To find the return on ad spend for each advertiser

-- Normal way
SELECT advertiser_id, ROUND(CAST(SUM(revenue)/SUM(spend) as numeric), 2) AS ROAS
FROM ad_campaigns
GROUP BY advertiser_id
ORDER BY advertiser_id;

-- Using subquery
SELECT advertiser_id, ROAS
FROM (SELECT advertiser_id, ROUND(CAST(SUM(revenue)/SUM(spend) as numeric), 2) ROAS
FROM ad_campaigns 
GROUP BY advertiser_id) roun
GROUP BY advertiser_id, ROAS
ORDER BY advertiser_id;

-- Usig CTE
WITH ROAS_ AS
(SELECT advertiser_id, SUM(revenue)/SUM(spend) ROAS 
FROM ad_campaigns
GROUP BY advertiser_id)
SELECT advertiser_id, ROUND(CAST(ROAS as numeric), 2)
FROM ROAS_
GROUP BY advertiser_id, roas
ORDER BY advertiser_id;
