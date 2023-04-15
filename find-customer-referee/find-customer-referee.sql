--Return all customers where the referee id is not equal
--to 2
--Runtime: 852ms Beats: 82.41%
SELECT name 
FROM Customer C
WHERE C.referee_id != 2 OR C.referee_id IS NULL
