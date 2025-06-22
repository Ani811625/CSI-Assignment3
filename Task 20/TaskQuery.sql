INSERT INTO TargetData (ID, Value)
SELECT ID, Value
FROM SourceData s
WHERE NOT EXISTS (
    SELECT 1 FROM TargetData t WHERE t.ID = s.ID
);

SELECT * FROM TargetData;