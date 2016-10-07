CREATE INDEX [IX_Adresse_Suche]
	ON [app].[Adresse]
([Strasse])
	INCLUDE ([AdresseId])

--SELECT [AdresseId]
--      ,[Strasse]
--  FROM [app].[Adresse]
--WHERE Strasse = 'Kantonsstrasse'