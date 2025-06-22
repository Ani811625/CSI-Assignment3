-- Main query to find symmetric pairs and repeated self-pairs
SELECT DISTINCT f1.X, f1.Y
FROM Functions f1
JOIN Functions f2
    ON f1.X = f2.Y AND f1.Y = f2.X
WHERE 
    -- Avoid duplicate symmetric pairs by always choosing one direction
    (f1.X < f1.Y)
    OR 
    -- Include self-pairs only if they appear more than once
    (f1.X = f1.Y AND 
        (SELECT COUNT(*) FROM Functions f3 WHERE f3.X = f1.X AND f3.Y = f1.Y) > 1
    )
ORDER BY f1.X;
