-- Question 1: How many total orders has UrbanCart received so far?

SELECT
count(*) as "Total Orders"
From public."FactOrders"
