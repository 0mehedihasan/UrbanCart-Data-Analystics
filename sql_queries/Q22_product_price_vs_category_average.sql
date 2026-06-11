-- Question 22: Create a list to show the difference between the category average price and product’s price for all the products.

with category_price as (
select
"category",
avg("unit_price") as avg_price
from public."DimProducts"
group by 1
)
select
p."product_name",
p."category",
p."unit_price",
cp.avg_price,
p."unit_price" - cp.avg_price as "Price Difference"
from public."DimProducts" p
left join category_price cp
on p."category"=cp."category"
