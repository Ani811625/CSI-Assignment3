SELECT 
    JobFamily,
    Country,
    ROUND(100.0 * Cost / SUM(Cost) OVER (PARTITION BY JobFamily), 2) AS Cost_Percentage
FROM JobCost;
