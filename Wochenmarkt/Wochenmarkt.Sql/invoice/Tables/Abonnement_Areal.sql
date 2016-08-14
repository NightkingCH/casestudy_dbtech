CREATE TABLE [invoice].[Abonnement_Areal]
(
	[Abonnement_ArealId] INT NOT NULL IDENTITY(1,1),
	[AbonnementId] INT NOT NULL,
	[ArealId] INT NOT NULL,
	CONSTRAINT PK_Abonnement_ArealId PRIMARY KEY ([Abonnement_ArealId]),
	CONSTRAINT FK_Abonnement_Areal_Abonnement FOREIGN KEY ([AbonnementId]) REFERENCES [invoice].[Abonnement] ([AbonnementId]),
	CONSTRAINT FK_Abonnement_Areal_Areal FOREIGN KEY ([ArealId]) REFERENCES [market].[Areal] ([ArealId])
)
