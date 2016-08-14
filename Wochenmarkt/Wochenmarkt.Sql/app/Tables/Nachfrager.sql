CREATE TABLE [app].[Nachfrager]
(
	[NachfragerId] INT NOT NULL IDENTITY(1,1),
	[MitgliedId] INT NOT NULL,
	CONSTRAINT PK_NachfragerId PRIMARY KEY ([NachfragerId]),
	CONSTRAINT FK_Nachfrager_Nachfrager_Mitglied FOREIGN KEY ([MitgliedId]) REFERENCES [app].[Mitglied] ([MitgliedId])
)
