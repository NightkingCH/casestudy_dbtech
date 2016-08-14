CREATE SCHEMA [app]
        AUTHORIZATION [dbo];
GO

GRANT ALTER, DELETE, EXECUTE, INSERT, SELECT, UPDATE ON SCHEMA::[app] TO [Wochenmarkt_App] AS [dbo]
GO

GRANT SELECT ON SCHEMA::[app] TO [Wochenmarkt_Invoice] AS [dbo]
GO
