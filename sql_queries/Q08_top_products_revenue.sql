-- Question 8: Which individual products generate the highest revenue?

select
p."product_name",
sum(oi."quantity" * p."unit_price") as "Total Revenue"
from public."FactOrderItems" oi
left join public."DimProducts" p
on oi."product_id" = p."product_id"
group by 1
order by 2 desc;
