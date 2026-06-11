-- Question 19: Do certain cities prefer specific payment methods?

select
c."city",
fp."method",
count(*) as "Total Orders"
from public."FactOrders" o
left join public."DimCustomers" c
on o."customer_id"=c."customer_id"
left join public."FactPayment" fp
on o."order_id"=fp."order_id"
group by 1,2
order by 1,3 desc
