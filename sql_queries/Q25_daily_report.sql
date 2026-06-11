-- Question 25: Generate a daily report containing the columns Date, Total Orders, Total Items,
Completed Orders, Cancelled Orders, Total Revenue?

select
o."order_date"::date as "Date",
count(distinct o."order_id") as "Total Orders",
sum(oi."quantity") as "Total Items",
count(distinct case when o."status"='Completed' then o."order_id" end) as "Completed Orders",
count(distinct case when o."status"='Cancelled' then o."order_id" end) as "Cancelled Orders",
sum(oi."quantity"*p."unit_price") as "Total Revenue"
from public."FactOrders" o
left join public."FactOrderItems" oi
on o."order_id"=oi."order_id"
left join public."DimProducts" p
on oi."product_id"=p."product_id"
group by 1
order by 1
