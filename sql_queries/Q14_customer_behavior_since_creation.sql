-- Question 14: How does customer purchasing behavior change over time since account creation?

select
round(
avg(
o."order_date"::date - c."created_at"::date
)
,2) as "Average Days To Purchase"
from public."FactOrders" o
left join public."DimCustomers" c
on o."customer_id" = c."customer_id";
