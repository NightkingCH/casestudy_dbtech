CREATE TABLE [invoice].[AbonnementMiete]
(
	[AbonnementMieteId] INT NOT NULL IDENTITY(1,1),
	[MieteId] INT NOT NULL,
	[AbonnementId] INT NOT NULL
	CONSTRAINT PK_AbonnementMieteId PRIMARY KEY ([AbonnementMieteId]),
	CONSTRAINT FK_Miete_Miete_Miete FOREIGN KEY ([MieteId]) REFERENCES [invoice].[Miete] ([MieteId]),
	CONSTRAINT FK_Miete_Miete_Abonnement FOREIGN KEY ([AbonnementId]) REFERENCES [invoice].[Abonnement] ([AbonnementId])
)
