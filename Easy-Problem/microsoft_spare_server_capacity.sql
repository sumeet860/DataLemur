-- To find the spare capacity of datacenter

SELECT d.datacenter_id,
d.monthly_capacity - SUM(monthly_demand) AS spare_capacity
FROM datacenters d
JOIN forecasted_demand fr
ON d.datacenter_id = fr.datacenter_id
GROUP BY d.datacenter_id, d.monthly_capacity
ORDER BY d.datacenter_id;
