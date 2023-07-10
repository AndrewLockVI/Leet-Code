--Better solution that uses joins
SELECT DISTINCT a.num ConsecutiveNums
FROM Logs AS a
LEFT JOIN Logs b
ON a.id + 1 = b.id
LEFT JOIN Logs c
ON b.id + 1 = c.id
WHERE a.num = b.num AND b.num = c.num
