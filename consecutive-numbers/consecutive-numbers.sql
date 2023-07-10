--Return all numbers that occur at least 3 times consecutively
--where they are ordered by their id.

SELECT Logs.num ConsecutiveNums
FROM Logs
WHERE Logs.num = (SELECT L.num FROM Logs as L 
WHERE L.id = Logs.id + 1)
AND Logs.num = (SELECT L.num FROM Logs as L 
WHERE L.id = Logs.id + 2)
GROUP BY Logs.num
