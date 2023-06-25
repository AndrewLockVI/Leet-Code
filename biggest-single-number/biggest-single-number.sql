--Find the largest number in a list
--of records where there are no repeats
--of the number
--Time: 800ms Beats: 77.74%

SELECT MAX(num) AS num
FROM MyNumbers
WHERE num NOT IN (
  SELECT num
  FROM MyNumbers
  GROUP BY num
  HAVING COUNT(*) > 1
);
