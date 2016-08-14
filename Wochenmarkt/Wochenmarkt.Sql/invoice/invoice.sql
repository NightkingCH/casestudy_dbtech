CREATE SCHEMA [invoice]
        AUTHORIZATION [dbo];
GO

GRANT ALTER, EXECUTE, SELECT ON SCHEMA::[invoice] TO [Wochenmarkt_App] AS [dbo]
GO

GRANT ALTER, DELETE, EXECUTE, INSERT, SELECT, UPDATE ON SCHEMA::[invoice] TO [Wochenmarkt_Invoice] AS [dbo]
GO