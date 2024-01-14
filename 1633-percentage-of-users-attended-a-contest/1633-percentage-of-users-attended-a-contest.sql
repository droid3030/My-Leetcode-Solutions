/* Write your T-SQL query statement below */
--percentage of users in each contest = users in contest / total users
SELECT
    contest_id,
    ROUND(COUNT(*) * 100.0 / (
        SELECT COUNT(*)
        FROM Users
    ), 2) AS percentage
FROM Register
GROUP BY contest_id
ORDER BY percentage DESC, contest_id