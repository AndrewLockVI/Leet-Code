--Write a sql query to return the first year
--of each product that has been sold along with
--the quantity and price of that year.

SELECT s.product_id, s.year as first_year, s.quantity, s.price
FROM Sales s
WHERE (s.year, s.product_id) IN (
  SELECT MIN(s2.year), s2.product_id
  FROM Sales s2
  GROUP BY s2.product_id
)
