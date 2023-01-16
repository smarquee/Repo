USE master;
GO
-- Verify database does not exist, if it does, drop it
IF DB_ID (N'Healthcare_Data') IS NOT NULL
DROP DATABASE Healthcare_Data;
GO
CREATE DATABASE Healthcare_Data;
GO
-- Verify the database files and sizes
SELECT name, size, size*1.0/128 AS [Size in MBs]
FROM sys.master_files
WHERE name = N'Healthcare_Data';
GO