CREATE TABLE [app].[Anmeldung]
(
	[AnmeldungId] INT NOT NULL IDENTITY(1,1),
	[MitgliedId] INT NOT NULL,
	[BesucherMitgliedId] INT NOT NULL,
	[AngemeldetAm] DATETIME2(7) NOT NULL,
	[StatutenUnterschrieben] BIT NOT NULL DEFAULT(0),
	[BesuchDurchgefuehrt] BIT NOT NULL DEFAULT(0),
	[BesuchDurchgefuehrtAm] DATETIME2(7) NOT NULL,
	[BonitaetsPruefungBestanden] BIT NOT NULL DEFAULT(0),
	[BonitaetsPruefungBestandenAm] DATETIME2(7) NOT NULL,
	[AnmeldungValid] AS (CASE WHEN [StatutenUnterschrieben] = 1 AND [BesuchDurchgefuehrt] = 1 AND [BonitaetsPruefungBestanden] = 1 THEN CAST(1 AS BIT) ELSE CAST(0 AS BIT) END) PERSISTED
	CONSTRAINT PK_AnmeldungId PRIMARY KEY ([AnmeldungId]),
	CONSTRAINT FK_Anmeldung_Anmeldung_Mitglied FOREIGN KEY ([MitgliedId]) REFERENCES [app].[Mitglied] ([MitgliedId]),
	CONSTRAINT FK_Anmeldung_Anmeldung_Besucher FOREIGN KEY ([BesucherMitgliedId]) REFERENCES [app].[Mitglied] ([MitgliedId])
)
