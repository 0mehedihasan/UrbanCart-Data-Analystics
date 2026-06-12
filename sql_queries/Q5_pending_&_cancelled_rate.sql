-- Question 5: What is the Completed, Pending & Cancelled Rate?

SELECT
    status,
    ROUND(COUNT(*) * 100.0 /
   (SELECT COUNT(*) FROM public."FactOrders"), 2) AS status_rate
FROM public."FactOrders"
GROUP BY status
ORDER BY status_rate DESC; 
