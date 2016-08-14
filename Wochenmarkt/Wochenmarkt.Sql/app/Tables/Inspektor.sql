CREATE TABLE [app].[Inspektor]
(
	[InspektorId] INT NOT NULL IDENTITY(1,1),
	[MitgliedId] INT NOT NULL,
	CONSTRAINT PK_InspektorId PRIMARY KEY ([InspektorId]),
	CONSTRAINT FK_Inspektor_Inspektor_Mitglied FOREIGN KEY ([MitgliedId]) REFERENCES [app].[Mitglied] ([MitgliedId])
)
