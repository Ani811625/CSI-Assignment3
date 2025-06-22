SELECT 
    s.submission_date,
    COUNT(DISTINCT s.hacker_id) AS total_hackers,
    MIN(s.hacker_id) AS lowest_hacker_id,
    (SELECT name FROM Hackers h WHERE h.hacker_id = MIN(s.hacker_id)) AS name
FROM Submissions s
WHERE s.submission_date BETWEEN '2016-03-01' AND '2016-03-15'
GROUP BY s.submission_date
ORDER BY s.submission_date;
