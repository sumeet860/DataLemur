-- To get cities with completed trades

SELECT city, count(*) total_orders
from trades join users on trades.user_id = users.user_id
where status = 'Completed' 
group by city
order by count(*) desc
limit 3
