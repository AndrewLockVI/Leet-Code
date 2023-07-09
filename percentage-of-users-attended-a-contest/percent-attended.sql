--Given a table that has contest sign ups return the percentage
--of all users who are at every given contest.

SELECT
    Register.contest_id,
    ROUND(COUNT(Register.user_id) / (SELECT COUNT(*) FROM Users) * 100, 2) AS percentage
FROM
    Register
GROUP BY
    Register.contest_id
ORDER BY
    percentage DESC,
    Register.contest_id ASC;
