--Given a list of customer visits and purchases
--return all customers who did not make any purchases
--at a given visit and how many times each did that.

SELECT Visits.customer_id, COUNT(Visits.visit_id) as count_no_trans
FROM Visits
LEFT JOIN Transactions
ON Transactions.visit_id = Visits.visit_id
WHERE Transactions.transaction_id is NULL
GROUP BY Visits.customer_id
