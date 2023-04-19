--Find if the lengths of sides can make a triangle and add attribute that states yes or no if it can
--Name that attribute triangle
--Runtime: 538ms  Beats: 35.62%
SELECT t.x, t.y, t.z,
CASE
    WHEN x + y > z AND y+x > z AND z+y > x AND z+x > y THEN "Yes"
    WHEN y >= x+z OR z >= x+y OR x >= y+z THEN "No"
  END AS triangle
FROM Triangle AS t
