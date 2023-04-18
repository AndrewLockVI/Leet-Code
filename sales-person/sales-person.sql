--Find all sales people who do not have any experience trading with 
--the "RED" customer.
--I used not in to check that the name was not in the list of names that traded with that group.
SELECT S.name
FROM SalesPerson AS S
LEFT JOIN Orders AS O
ON O.sales_id = S.sales_id
LEFT JOIN Company AS C
ON C.com_id = O.com_id
WHERE S.name NOT IN
(
SELECT S.name
FROM SalesPerson AS S
LEFT JOIN Orders AS O
ON O.sales_id = S.sales_id
LEFT JOIN Company AS C
ON C.com_id = O.com_id
WHERE C.name = "RED"
)
GROUP BY S.name
