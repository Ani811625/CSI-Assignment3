SELECT 
    BU,
    FORMAT(Month, 'yyyy-MM') AS Month,
    ROUND(SUM(Cost * Weight) / SUM(Weight), 2) AS Weighted_Avg_Cost
FROM EmployeeCost
GROUP BY BU, Month;
