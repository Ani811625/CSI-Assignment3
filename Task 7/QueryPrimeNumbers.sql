WITH Numbers AS (
    SELECT 2 AS num
    UNION ALL
    SELECT num + 1 FROM Numbers WHERE num < 1000
),
Primes AS (
    SELECT n.num
    FROM Numbers n
    WHERE NOT EXISTS (
        SELECT 1 FROM Numbers d 
        WHERE d.num < n.num AND d.num > 1 AND n.num % d.num = 0
    )
)
SELECT STRING_AGG(CAST(num AS VARCHAR), '&') AS PrimeList
FROM Primes
OPTION (MAXRECURSION 1000);
