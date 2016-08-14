CREATE TABLE [app].[Standbetreiber]
(
	[StandbetreiberId] INT NOT NULL IDENTITY(1,1),
	[MitgliedId] INT NOT NULL,
	CONSTRAINT PK_StandbetreiberId PRIMARY KEY ([StandbetreiberId]),
	CONSTRAINT FK_Standbetreiber_Standbetreiber_Mitglied FOREIGN KEY ([MitgliedId]) REFERENCES [app].[Mitglied] ([MitgliedId])
)
