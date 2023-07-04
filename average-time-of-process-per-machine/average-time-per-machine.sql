--Given a list of machines and timestamps write a query
--that calculates the average time between the start and finish
--for each machine.
SELECT 
    s.machine_id, 
    ROUND(AVG(e.timestamp-s.timestamp),3) as processing_time 
FROM Activity s
JOIN Activity e ON e.machine_id=s.machine_id
WHERE s.activity_type='start' AND e.activity_type='end'
GROUP BY s.machine_id