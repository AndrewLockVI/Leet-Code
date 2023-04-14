--Runtime 589ms Beats 97.92%


SELECT W.id Id
FROM Weather W
LEFT JOIN Weather W1
ON SUBDATE(W1.recordDate, -1) = W.recordDate
WHERE W1.temperature < W.temperature
