CREATE SCHEMA [market]
        AUTHORIZATION [dbo];
GO

GRANT ALTER, DELETE, EXECUTE, INSERT, SELECT, UPDATE ON SCHEMA::[market] TO [Wochenmarkt_App] AS [dbo]
GO

GRANT SELECT ON SCHEMA::[market] TO [Wochenmarkt_Invoice] AS [dbo]
GO