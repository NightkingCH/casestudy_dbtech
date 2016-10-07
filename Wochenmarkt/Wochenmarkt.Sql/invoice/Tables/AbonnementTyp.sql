CREATE TABLE [invoice].[AbonnementTyp]
(
	[AbonnementTypId] INT NOT NULL IDENTITY(1,1),
	[Bezeichnung] NVARCHAR(150) NOT NULL,
	[Wert] INT NOT NULL, -- enum value!
	[Dauer] INT NOT NULL, -- in months
	CONSTRAINT PK_AbonnementTypId PRIMARY KEY ([AbonnementTypId])
)
