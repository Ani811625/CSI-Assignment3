SELECT 
    BU,
    FORMAT(Month, 'yyyy-MM') AS Month,
    ROUND(Cost / Revenue, 2) AS Cost_Revenue_Ratio
FROM BU_Finance;
