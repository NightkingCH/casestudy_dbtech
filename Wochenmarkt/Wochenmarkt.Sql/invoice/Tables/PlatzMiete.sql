CREATE TABLE [invoice].[PlatzMiete]
(
	[PlatzMieteId] INT NOT NULL IDENTITY(1,1),
	[MieteId] INT NOT NULL,
	[NutzungId] INT NOT NULL
	CONSTRAINT PK_PlatzMieteId PRIMARY KEY ([PlatzMieteId]),
	CONSTRAINT FK_PlatzMiete_Miete_Miete FOREIGN KEY ([MieteId]) REFERENCES [invoice].[Miete] ([MieteId]),
	CONSTRAINT FK_PlatzMiete_Miete_Nutzung FOREIGN KEY ([NutzungId]) REFERENCES [market].[Nutzung] ([NutzungId])
)
