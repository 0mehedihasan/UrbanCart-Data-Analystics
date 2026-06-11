-- Question 12: Generate a list of cancellation rate by city; also the cancellation rate for customers.

select
c."city",
round(
count(case
when o."status"='Cancelled' then 1 end)
*100.0/count(*),2
) as "Cancellation Rate %"
from public."FactOrders" o
left join public."DimCustomers" c
on o."customer_id"=c."customer_id"
group by 1
order by 2 desc
