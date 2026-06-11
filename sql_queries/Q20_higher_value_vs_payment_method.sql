-- Question 20: Are higher-value orders associated with specific payment methods?

with order_value as (
select
o."order_id",
fp."method",
sum(oi."quantity"*p."unit_price") as order_value
from public."FactOrders" o
left join public."FactPayment" fp
on o."order_id"=fp."order_id"
left join public."FactOrderItems" oi
on o."order_id"=oi."order_id"
left join public."DimProducts" p
on oi."product_id"=p."product_id"
group by 1,2
)
select
"method",
round(avg(order_value),2) as "Average Order Value"
from order_value
group by 1
order by 2 desc
