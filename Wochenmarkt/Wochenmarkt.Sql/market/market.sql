CREATE SCHEMA [market]
        AUTHORIZATION [dbo];
GO

GRANT ALTER, DELETE, EXECUTE, INSERT, SELECT, UPDATE ON SCHEMA::[market] TO [application] AS [dbo]
GO

GRANT SELECT ON SCHEMA::[market] TO [invoice] AS [dbo]
GO