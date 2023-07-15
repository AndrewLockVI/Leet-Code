--Given a list of users return the fraction of times
--that the user was successfully confirmed
--if they have no auth attempts return 0.
SELECT Signups.user_id , ROUND(COALESCE(AVG(
  CASE WHEN Confirmations.action = 'confirmed' THEN 1
  WHEN Confirmations.action <> 'confirmed' THEN 0 END
), 0),2) AS confirmation_rate
FROM Signups
LEFT JOIN Confirmations
ON Confirmations.user_id = Signups.user_id
GROUP BY Signups.user_id
