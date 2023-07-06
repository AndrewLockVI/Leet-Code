--Return all movies that have an odd number as the id
--and do not have a description of boring
SELECT *
FROM Cinema
WHERE Cinema.id % 2 = 1 and Cinema.description != 'boring'
ORDER BY Cinema.rating DESC
