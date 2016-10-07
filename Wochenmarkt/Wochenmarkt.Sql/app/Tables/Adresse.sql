CREATE TABLE [app].[Adresse]
(
	[AdresseId] INT NOT NULL IDENTITY(1,1),
	[OrtId] INT NOT NULL,
	[Strasse] NVARCHAR(150) NOT NULL,
	[Hausnummer] INT NOT NULL,
	[HausnummerZusatz] NVARCHAR(4) NULL,
	[StrasseFull] AS ([Strasse] + ' ' + CAST([Hausnummer] AS NVARCHAR(MAX)) + COALESCE([HausnummerZusatz], '')) PERSISTED
	CONSTRAINT PK_AdresseId PRIMARY KEY ([AdresseId]),
	CONSTRAINT FK_Adresse_Adresse_Ort FOREIGN KEY ([OrtId]) REFERENCES [app].[Ort] ([OrtId])
)
