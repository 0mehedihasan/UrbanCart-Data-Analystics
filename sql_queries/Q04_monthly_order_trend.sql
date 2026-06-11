-- Question 4:What is the monthly trend of total orders over time?

select
date_trunc('month',"order_date"::date) as "Month",
count(*) as "Total Orders"
from public."FactOrders"
group by 1
order by 1
