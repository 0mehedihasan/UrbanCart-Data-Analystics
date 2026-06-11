-- Question 24: Which product pairs generate the highest total revenue when sold together?

select
concat(p1."product_name",' + ',p2."product_name") as "Product Pair",
sum(
(o1."quantity"*p1."unit_price") +
(o2."quantity"*p2."unit_price")
) as "Pair Revenue"
from public."FactOrderItems" o1
join public."FactOrderItems" o2
on o1."order_id"=o2."order_id"
and o1."product_id" < o2."product_id"
left join public."DimProducts" p1
on o1."product_id"=p1."product_id"
left join public."DimProducts" p2
on o2."product_id"=p2."product_id"
group by 1
order by 2 desc
