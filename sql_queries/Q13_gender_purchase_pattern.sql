-- Question 13: Do male and female customers show different purchasing patterns by category?

select
c."gender",
p."category",
sum(oi."quantity") as "Items Purchased",
sum(oi."quantity" * p."unit_price") as "Revenue"
from public."FactOrders" o
left join public."DimCustomers" c
on o."customer_id" = c."customer_id"
left join public."FactOrderItems" oi
on o."order_id" = oi."order_id"
left join public."DimProducts" p
on oi."product_id" = p."product_id"
group by 1,2
order by 1,4 desc;
