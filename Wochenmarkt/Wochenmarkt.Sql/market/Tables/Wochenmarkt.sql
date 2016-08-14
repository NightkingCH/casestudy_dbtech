CREATE TABLE [market].[Wochenmarkt]
(
	[WochenmarktId] INT NOT NULL IDENTITY(1,1),
	[AdresseId] INT NOT NULL, -- event location
	[MarktDatumVon] DATETIME2(7), -- store date time offset (time zone)!
	[MarktDatumBis] DATETIME2(7),
	CONSTRAINT PK_WochenmarktId PRIMARY KEY ([WochenmarktId]),
	CONSTRAINT FK_Wochenmarkt_Wochenmarkt_Adresse FOREIGN KEY ([AdresseId]) REFERENCES [app].[Adresse] ([AdresseId])
)
