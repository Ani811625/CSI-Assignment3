SELECT 
    CEILING(AVG(Salary * 1.0) - 
            AVG(CAST(REPLACE(Salary, '0', '') AS FLOAT))) AS Avg_Error
FROM EmployeesAvg;
