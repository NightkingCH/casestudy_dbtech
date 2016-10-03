use Wochenmarkt

-- Prüfung der referentiellen Integrität deaktivieren
EXEC sp_MSforeachtable 'ALTER TABLE ? NOCHECK CONSTRAINT ALL' 
GO 

-- Delete table
-- Quoted_Identifier deaktivieren um keine Meldung zu bekommen 
EXEC sp_MSforeachtable 'SET QUOTED_IDENTIFIER ON DELETE FROM ?' 
GO 

-- Prüfung der referentiellen Integrität wieder aktivieren
EXEC sp_MSforeachtable 'ALTER TABLE ? CHECK CONSTRAINT ALL' 
GO 

-- Reset Identity-Spalten   
EXEC sp_MSforeachtable '  
IF OBJECTPROPERTY(object_id(''?''), ''TableHasIdentity'') = 1  
DBCC CHECKIDENT (''?'', RESEED, 0)  
'  
GO