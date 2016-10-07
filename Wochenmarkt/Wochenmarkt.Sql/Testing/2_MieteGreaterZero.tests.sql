USE Wochenmarkt
GO

BEGIN TRANSACTION TH_Miete

	--TC:2.1 Betrag > 0 --> möglich
	INSERT INTO [invoice].[Miete]
			   (
				   [Betrag] 
				   ,[Bezahlt]
				   ,[Mahnstufe]
				   ,[GemahntAm]
			   )
		 VALUES
			   (100.00 ,0 ,0 ,NULL)
	GO

	--TC:2.2 Betrag > 0 und mit Dezimal --> möglich
	INSERT INTO [invoice].[Miete]
			   (
				   [Betrag] 
				   ,[Bezahlt]
				   ,[Mahnstufe]
				   ,[GemahntAm]
			   )
		 VALUES
			   (100.87545 ,0 ,0 ,NULL)
	GO

	--TC:2.3 Betrag = 0 --> nicht möglich
	INSERT INTO [invoice].[Miete]
			   (
				   [Betrag] 
				   ,[Bezahlt]
				   ,[Mahnstufe]
				   ,[GemahntAm]
			   )
		 VALUES
			   (0 ,0 ,0 ,NULL)
	GO

	--TC:2.4 Betrag < 0 --> nicht möglich
	INSERT INTO [invoice].[Miete]
			   (
				   [Betrag] 
				   ,[Bezahlt]
				   ,[Mahnstufe]
				   ,[GemahntAm]
			   )
		 VALUES
			   (-3827.95 ,0 ,0 ,NULL)
	GO

ROLLBACK TRANSACTION TH_Miete
