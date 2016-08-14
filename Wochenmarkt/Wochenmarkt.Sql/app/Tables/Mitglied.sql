CREATE TABLE [app].[Mitglied]
(
	[MitgliedId] INT NOT NULL IDENTITY(1,1),
	[AdresseId] INT NOT NULL,
	[Vorname] NVARCHAR(MAX) NOT NULL,
	[Nachname] NVARCHAR(MAX) NOT NULL,
	[Name] AS ([Vorname] + ' ' + [Nachname]) PERSISTED,
	[Geburtsdatum] DATETIME2(7) NOT NULL,
	[ProvisorischesMitglied] BIT NOT NULL DEFAULT(1), -- every account is temporary until it is proven!
	[ProbezeitVon] DATETIME2(7) NOT NULL,
	[ProbezeitBis] DATETIME2(7) NOT NULL,
	[Abgelehnt] BIT NOT NULL DEFAULT (0),
	[Ablehnungsgrund] NVARCHAR(MAX) NOT NULL DEFAULT(''),
	CONSTRAINT PK_MitgliedId PRIMARY KEY ([MitgliedId]),
	CONSTRAINT FK_Mitglied_Mitglied_Adresse FOREIGN KEY ([AdresseId]) REFERENCES [app].[Adresse] ([AdresseId])
)
