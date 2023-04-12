--This joins the table with itself where the id of a person is not the same but the email is.
--By doing this you get every time that an email is reused. Then using the distinct keyword it
--does not show duplicates of every email
--Time: 757ms Beats: 40.17%
SELECT DISTINCT p1.Email
FROM Person AS p1
INNER JOIN Person AS p2
ON p1.Email = p2.Email
WHERE p1.id != p2.id
