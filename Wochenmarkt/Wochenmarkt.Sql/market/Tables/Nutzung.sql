CREATE TABLE [market].[Nutzung]
(
	[NutzungId] INT NOT NULL IDENTITY(1,1),
	[ArealId] INT NOT NULL,
	[WochenmarktId] INT NOT NULL,
	[StandbetreiberId] INT NOT NULL,
	CONSTRAINT PK_NutzungId PRIMARY KEY ([NutzungId]),
	CONSTRAINT FK_Nutzung_Nutzung_Areal FOREIGN KEY ([ArealId]) REFERENCES [market].[Areal] ([ArealId]),
	CONSTRAINT FK_Nutzung_Nutzung_Wochenmarkt FOREIGN KEY ([WochenmarktId]) REFERENCES [market].[Wochenmarkt] ([WochenmarktId]),
	CONSTRAINT FK_Nutzung_Nutzung_Standbetreiber FOREIGN KEY ([StandbetreiberId]) REFERENCES [app].[Standbetreiber] ([StandbetreiberId])
)
