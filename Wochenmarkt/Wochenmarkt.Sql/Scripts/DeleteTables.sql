use Wochenmarkt

-- Pr�fung der referentiellen Integrit�t deaktivieren
EXEC sp_MSforeachtable 'ALTER TABLE ? NOCHECK CONSTRAINT ALL' 
GO 

-- Delete table
-- Quoted_Identifier deaktivieren um keine Meldung zu bekommen 
EXEC sp_MSforeachtable 'SET QUOTED_IDENTIFIER ON DELETE FROM ?' 
GO 

-- Pr�fung der referentiellen Integrit�t wieder aktivieren
EXEC sp_MSforeachtable 'ALTER TABLE ? CHECK CONSTRAINT ALL' 
GO 

-- Reset Identity-Spalten   
EXEC sp_MSforeachtable '  
IF OBJECTPROPERTY(object_id(''?''), ''TableHasIdentity'') = 1  
DBCC CHECKIDENT (''?'', RESEED, 0)  
'  
GO