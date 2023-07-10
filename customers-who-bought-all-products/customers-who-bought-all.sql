--This gives a TLE but basically finds
--all customers who have bought every product
--at least one time using subqueries

SELECT Customer.customer_id
FROM Customer
WHERE (
  SELECT COUNT(DISTINCT(C.product_key)) 
  FROM Customer AS C
  WHERE C.customer_id = Customer.customer_id
) = (
  SELECT COUNT(*) 
  FROM Product
)
GROUP BY Customer.customer_id
