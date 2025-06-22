WITH Ranked AS (
    SELECT *, RANK() OVER (ORDER BY Salary DESC) AS rnk
    FROM EmployeeSalary
)
SELECT EmpID, EmpName, Salary
FROM Ranked
WHERE rnk <= 5;
