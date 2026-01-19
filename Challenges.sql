WITH ChallengeCount AS (
    SELECT 
        h.hacker_id,
        h.name,
        COUNT(c.challenge_id) AS total_challenges
    FROM Hackers h
    LEFT JOIN Challenges c 
        ON h.hacker_id = c.hacker_id
    GROUP BY h.hacker_id, h.name
),
MaxChallenge AS (
    SELECT MAX(total_challenges) AS max_cnt
    FROM ChallengeCount
)
SELECT 
    cc.hacker_id,
    cc.name,
    cc.total_challenges
FROM ChallengeCount cc
CROSS JOIN MaxChallenge m
WHERE 
    cc.total_challenges = m.max_cnt
    OR cc.total_challenges IN (
        SELECT total_challenges
        FROM ChallengeCount
        GROUP BY total_challenges
        HAVING COUNT(*) = 1
    )
ORDER BY 
    cc.total_challenges DESC,
    cc.hacker_id ASC;