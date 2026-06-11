-- Question 16: Generate a list of customers who ordered both in October & December.

with october as (
select distinct "customer_id"
from public."FactOrders"
where extract(month from "order_date") = 10
),
december as (
select distinct "customer_id"
from public."FactOrders"
where extract(month from "order_date") = 12
)
select
c.*
from october o
join december d
on o."customer_id"=d."customer_id"
left join public."DimCustomers" c
on o."customer_id"=c."customer_id";
