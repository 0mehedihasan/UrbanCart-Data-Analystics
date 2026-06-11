-- Question 21: What is the average number of items per order by payment method?

with order_items as (
select
fp."method",
o."order_id",
sum(oi."quantity") as total_items
from public."FactOrders" o
left join public."FactPayment" fp
on o."order_id"=fp."order_id"
left join public."FactOrderItems" oi
on o."order_id"=oi."order_id"
group by 1,2
)
select
"method",
round(avg(total_items),2) as "Average Items"
from order_items
group by 1
order by 2 desc;
