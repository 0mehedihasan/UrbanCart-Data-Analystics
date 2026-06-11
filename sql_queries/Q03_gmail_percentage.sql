-- Question 3: What percent of total customers uses gmail?

select
round(
count(
case
when "email" ilike('%gmail%')
then "customer_id"
end
) * 100.0 / count(*)
,2) as "Gmail Percentage"
from public."DimCustomers"

