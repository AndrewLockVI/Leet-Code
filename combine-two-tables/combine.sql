-- First SQL Statement for Leet-Code
-- Runtime: 776ms
-- Beats: 54.92%



SELECT P.firstName, P.lastName, A.city, A.state
FROM Person AS P 
LEFT JOIN Address as A
ON A.personId = P.personid
