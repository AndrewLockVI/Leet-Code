--Runtime: 1363ms Beats: 33.21%

--The sum gets the added total of the unit values given that this is an aggregated list it is the sum
--of all the units sold of a given product id.
SELECT P.product_name, sum(O.unit ) AS unit
FROM Products AS P
 JOIN Orders as O
ON O.product_id = P.product_id
--Only when the date is in February of 2020
WHERE O.order_date >= '2020-02-01' AND O.order_date < '2020-03-01'
--This aggregates the rows to allow for the sum to only return the sum of the
--values with a given product id.
GROUP BY P.product_id
--Having is used to check the total of the aggregated values
HAVING unit >= 100
