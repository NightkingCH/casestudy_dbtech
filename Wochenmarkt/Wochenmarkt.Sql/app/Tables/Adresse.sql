CREATE TABLE [app].[Adresse]
(
	[AdresseId] INT NOT NULL IDENTITY(1,1),
	[OrtId] NVARCHAR(MAX) NOT NULL,
	[Strasse] NVARCHAR(MAX) NOT NULL,
	[Hausnummer] INT NOT NULL,
	[HausnummerZusatz] NVARCHAR(MAX) NULL,
	[StrasseFull] AS ([Strasse] + ' ' + [Hausnummer] + COALESCE([HausnummerZusatz], '')) PERSISTED
	CONSTRAINT PK_AdresseId PRIMARY KEY ([AdresseId])
)
