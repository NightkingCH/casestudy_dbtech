CREATE TABLE [invoice].[Abonnement]
(
	[AbonnementId] INT NOT NULL IDENTITY(1,1),
	[AbonnementTypId] INT NOT NULL,
	[StandbetreiberId] INT NOT NULL,
	[GueltigAb] DATETIME2(7) NOT NULL,
	[GueltigBis] DATETIME2(7) NOT NULL,
	CONSTRAINT PK_AbonnementId PRIMARY KEY ([AbonnementId]),
	CONSTRAINT FK_Abonnement_Abonnement_AbonnementTyp FOREIGN KEY ([AbonnementTypId]) REFERENCES [invoice].[AbonnementTyp] ([AbonnementTypId]),
	CONSTRAINT FK_Abonnement_Abonnement_Standbetreiber FOREIGN KEY ([StandbetreiberId]) REFERENCES [app].[Standbetreiber] ([StandbetreiberId]),
	CONSTRAINT CK_Abonnement_GueltigAbLessThanGueltigBis CHECK ([GueltigAb] <= [GueltigBis]),
	CONSTRAINT CK_Abonnement_GueltigBisGreaterThanGueltigAb CHECK ([GueltigBis] >= [GueltigAb])
)
