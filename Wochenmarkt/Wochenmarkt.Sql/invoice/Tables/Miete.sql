CREATE TABLE [invoice].[Miete]
(
	[MieteId] INT NOT NULL IDENTITY(1,1),
	[AbonnementId] INT NOT NULL,
	[Betrag] DECIMAL(18,4) NOT NULL,
	[Bezahlt] BIT NOT NULL DEFAULT(0),
	[Mahnstufe] INT NOT NULL DEFAULT(0), -- Mahnwesen, 0 = Keine Mahnung, 1 = 1. Mahnung, 2 = 2. Mahnung, 3 = 3. Mahnung, 4 = Betreibung
	[GemahntAm] DATETIME2(7) NULL,
	CONSTRAINT PK_MieteId PRIMARY KEY ([MieteId]),
	CONSTRAINT FK_Miete_Miete_Abonnement FOREIGN KEY ([AbonnementId]) REFERENCES [invoice].[Abonnement] ([AbonnementId])
)
