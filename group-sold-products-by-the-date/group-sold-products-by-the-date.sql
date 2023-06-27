--Given a list of products return the number of
--unique products sold on given days and return
--a list of the distinct products as another
--column.

SELECT sell_date, COUNT(DISTINCT product) as num_sold, GROUP_CONCAT(DISTINCT product) as products
FROM Activities
GROUP BY sell_date

