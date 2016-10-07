USE Wochenmarkt
GO

BEGIN TRANSACTION TH_Abonnement

	--TC:3.1 GueltigAb <= GueltigBis--> möglich
	INSERT INTO [invoice].[Abonnement]
           ([AbonnementTypId]
           ,[StandbetreiberId]
           ,[GueltigAb]
           ,[GueltigBis])
     VALUES
           (
			   (SELECT AbonnementTypId FROM invoice.AbonnementTyp WHERE Wert LIKE 2)
			   ,(SELECT StandbetreiberId FROM app.Standbetreiber WHERE StandbetreiberId LIKE 1)
			   ,'2016-10-01'
			   ,'2016-10-01'
		   );
	GO

	--TC:3.2 GueltigBis >= GueltigAb --> möglich
	INSERT INTO [invoice].[Abonnement]
           ([AbonnementTypId]
           ,[StandbetreiberId]
           ,[GueltigAb]
           ,[GueltigBis])
     VALUES
           (
			   (SELECT AbonnementTypId FROM invoice.AbonnementTyp WHERE Wert LIKE 2)
			   ,(SELECT StandbetreiberId FROM app.Standbetreiber WHERE StandbetreiberId LIKE 1)
			   ,'2016-10-01'
			   ,'2016-10-18'
		   );
	GO

	--TC:3.3 GueltigAb > GueltigBis ||GueltigBis < GueltigAb --> nicht möglich
	INSERT INTO [invoice].[Abonnement]
           ([AbonnementTypId]
           ,[StandbetreiberId]
           ,[GueltigAb]
           ,[GueltigBis])
     VALUES
           (
			   (SELECT AbonnementTypId FROM invoice.AbonnementTyp WHERE Wert LIKE 2)
			   ,(SELECT StandbetreiberId FROM app.Standbetreiber WHERE StandbetreiberId LIKE 1)
			   ,'2016-10-15'
			   ,'2016-10-01'
		   );
	GO

ROLLBACK TRANSACTION TH_Abonnement
