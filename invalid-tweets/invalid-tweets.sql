--Runtime: 1072ms Beats: 76.83%
SELECT tweet_id
FROM Tweets AS T
WHERE LENGTH(T.content) > 15
