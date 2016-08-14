CREATE TABLE [market].[Areal]
(
	[ArealId] INT NOT NULL IDENTITY(1,1),
	[AdresseId] INT NOT NULL,
	[Laenge] DECIMAL(18,4), -- m
	[Breite] DECIMAL(18,4), -- m
	[Flaeche] AS ([Laenge]*[Breite]) PERSISTED, -- m²
	[MietPreis] AS DECIMAL(18,4),
	CONSTRAINT PK_ArealId PRIMARY KEY ([ArealId]),
	CONSTRAINT FK_Areal_Areal_Adresse FOREIGN KEY ([AdresseId]) REFERENCES [app].[Adresse] ([AdresseId])
)
