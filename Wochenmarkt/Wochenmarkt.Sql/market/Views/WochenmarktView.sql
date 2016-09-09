CREATE VIEW [market].[WochenmarktView] AS Select Adresse.StrasseFull as Strasse, Ort.PLZ, Ort.Bezeichnung as Ort, Wochenmarkt.MarktDatumVon, Wochenmarkt.MarktDatumBis from market.Wochenmarkt as Wochenmarkt
	inner join app.Adresse as Adresse
		on Wochenmarkt.AdresseId = Adresse.AdresseId
			inner join app.Ort as Ort
				on Adresse.OrtId = Ort.OrtId