CREATE VIEW [market].[ArealView] AS Select Adresse.StrasseFull as Strasse, Ort.PLZ, Ort.Bezeichnung as Ort, Areal.Laenge, Areal.Breite, Areal.Flaeche, Areal.MietPreis from market.Areal as Areal
	inner join app.Adresse as Adresse
		on Areal.AdresseId = Adresse.AdresseId
			inner join app.Ort as Ort
				on Adresse.OrtId = Ort.OrtId