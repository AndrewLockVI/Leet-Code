--Return all customers where the referee id is not equal
--to 2

SELECT name 
FROM Customer C
WHERE C.referee_id != 2 OR C.referee_id IS NULL
