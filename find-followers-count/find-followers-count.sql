--Find the number of followers each user has

SELECT Followers.user_id, COUNT(Followers.user_id) followers_count
FROM Followers
GROUP BY Followers.user_id
ORDER BY Followers.user_id
