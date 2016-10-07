CREATE TABLE [app].[Beurteilung]
(
	[BeurteilungId] INT NOT NULL IDENTITY(1,1),
	[StandbetreiberId] INT NOT NULL,
	[InspektorId] INT NOT NULL,
	[BeurteilungAm] DATETIME2(7) NOT NULL,
	[BeurteilungDurchgefuehrt] BIT NOT NULL DEFAULT(0),
	[Bestanden] BIT NOT NULL DEFAULT(0),
	[BeurteilungsFormularPfad] NVARCHAR(MAX) NULL, 
    CONSTRAINT PK_BeurteilungId PRIMARY KEY ([BeurteilungId]),
	CONSTRAINT FK_Beurteilung_Beurteilung_Standbetreiber FOREIGN KEY ([StandbetreiberId]) REFERENCES [app].[Standbetreiber] ([StandbetreiberId]),
	CONSTRAINT FK_Beurteilung_Beurteilung_Inspektor FOREIGN KEY ([InspektorId]) REFERENCES [app].[Inspektor] ([InspektorId])
)
