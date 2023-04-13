--Write a SQL query to find the customers who do not have any
--associated orders and return the names of the customers with the
--heading of "Customers"

--Speed: 981ms Beats: 59.87%
SELECT C.name as Customers
FROM Customers as C
LEFT JOIN Orders as O
ON O.customerId = C.id
WHERE O.customerId IS NULL
