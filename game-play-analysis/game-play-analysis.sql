
--Write query to find the first login for a user
--Runtime: 985ms Beats: 44.95%
SELECT A.player_id, min(A.event_date) first_login
FROM Activity AS A
GROUP BY player_id
