--Runtime: 853ms Beats 79.3%
--Return the customer with the most number of orders
SELECT O.customer_number
FROM Orders AS O
GROUP BY O.customer_number
ORDER BY count(O.customer_number) DESC
LIMIT 1

