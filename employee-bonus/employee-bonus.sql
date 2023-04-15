--Show all employees with a bonus less than 1000 dollars
--Runtime: 1928ms Beats: 35.82%

SELECT E.name, B.bonus
FROM Employee as E
LEFT JOIN Bonus as B
ON E.empId=B.empId
WHERE B.bonus < 1000 OR B.bonus IS NULL
