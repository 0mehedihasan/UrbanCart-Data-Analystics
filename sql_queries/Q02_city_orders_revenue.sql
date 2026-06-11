__ Question 2: Which cities generate the highest 
number of orders & revenue?


select
c."city",
count(distinct o."order_id") as "Total Orders",
sum(oi."quantity" * p."unit_price") as "Total Revenue"
from public."FactOrders" o
left join public."DimCustomers" c
on o."customer_id" = c."customer_id"
left join public."FactOrderItems" oi
on o."order_id" = oi."order_id"
left join public."DimProducts" p
on oi."product_id" = p."product_id"
group by 1
order by 3 desc;
