-- Create Login
CREATE LOGIN CelebalUser WITH PASSWORD = 'SecureP@ss123!';

-- Create User
CREATE USER CelebalUser FOR LOGIN CelebalUser;

-- Grant db_owner Role
EXEC sp_addrolemember 'db_owner', 'CelebalUser';
