CREATE VIEW [app].[InspektorView] AS Select Mitglied.Name, Adresse.StrasseFull, Ort.PLZ, Ort.Bezeichnung, Mitglied.Email, Mitglied.Telefon, Mitglied.Geburtsdatum, Mitglied.ProvisorischesMitglied, Mitglied.ProbezeitVon, Mitglied.ProbezeitBis from app.Inspektor as Inspektor
	inner join app.Mitglied as Mitglied
		on Inspektor.MitgliedId = Mitglied.MitgliedId
			inner join app.Adresse as Adresse
				on Mitglied.AdresseId = Adresse.AdresseId
					inner join app.Ort as Ort
						on Adresse.OrtId = Ort.OrtId