--Given a table with scores return the scores
--in rank order where 1 is the highest and the lowest
--is n - r where r is the number of repeated values.

SELECT
    Scores.score,
    (SELECT COUNT(DISTINCT score) FROM Scores s2 WHERE s2.score >= Scores.score) AS 'rank'
FROM Scores
ORDER BY Scores.score desc
