-- Question 7: Which product categories contribute the most to total revenue?

select
p."category",
sum(oi."quantity" * p."unit_price") as "Total Revenue"
from public."FactOrderItems" oi
left join public."DimProducts" p
on oi."product_id" = p."product_id"
group by 1
order by 2 desc;
