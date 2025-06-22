WITH ProjectGroups AS (
    SELECT *,
        DATEADD(DAY, -ROW_NUMBER() OVER (ORDER BY Start_Date), Start_Date) AS grp
    FROM Projects
),
GroupedProjects AS (
    SELECT 
        MIN(Start_Date) AS ProjectStart,
        MAX(End_Date) AS ProjectEnd
    FROM ProjectGroups
    GROUP BY grp
)
SELECT 
    ProjectStart,
    ProjectEnd
FROM GroupedProjects
ORDER BY 
    DATEDIFF(DAY, ProjectStart, ProjectEnd) ASC,
    ProjectStart ASC;
