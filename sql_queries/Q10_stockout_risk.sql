-- Question 10: Which products are at risk of stock-out due to high sales volume and low inventory?

select
p."product_id",
p."product_name",
p."stock",
sum(oi."quantity") as "Total Sold"
from public."FactOrderItems" oi
left join public."DimProducts" p
on oi."product_id" = p."product_id"
group by 1,2,3
order by "Total Sold" desc, p."stock" asc
