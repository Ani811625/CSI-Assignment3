SELECT 
    SubBand,
    COUNT(*) AS Headcount,
    ROUND(100.0 * COUNT(*) / COUNT(*) OVER (), 2) AS Headcount_Percentage
FROM Employees
GROUP BY SubBand;
