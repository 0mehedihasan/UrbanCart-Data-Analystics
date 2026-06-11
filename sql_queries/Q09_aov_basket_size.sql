-- Question 9: What is the average order value (AOV) and Average Basket Size?

with order_summary as (
select
oi."order_id",
sum(oi."quantity" * p."unit_price") as order_value,
sum(oi."quantity") as basket_size
from public."FactOrderItems" oi
left join public."DimProducts" p
on oi."product_id" = p."product_id"
group by 1
)
select
round(avg(order_value),2) as "AOV",
round(avg(basket_size),2) as "Average Basket Size"
from order_summary
