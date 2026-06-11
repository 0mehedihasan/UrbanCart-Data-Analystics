select
fp."method",
fo."status",
count(*) as "Total Orders"
from public."FactPayment" fp
left join public."FactOrders" fo
on fp."order_id"=fo."order_id"
group by 1,2
order by 1,3 desc;
